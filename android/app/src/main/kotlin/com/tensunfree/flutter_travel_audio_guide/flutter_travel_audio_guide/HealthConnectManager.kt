package com.tensunfree.flutter_travel_audio_guide.flutter_travel_audio_guide

import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Looper
import androidx.health.connect.client.HealthConnectClient
import androidx.health.connect.client.permission.HealthPermission
import androidx.health.connect.client.records.DistanceRecord
import androidx.health.connect.client.records.ExerciseSessionRecord
import androidx.health.connect.client.records.StepsRecord
import androidx.health.connect.client.records.metadata.Device
import androidx.health.connect.client.records.metadata.Metadata
import androidx.health.connect.client.request.AggregateRequest
import androidx.health.connect.client.time.TimeRangeFilter
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import java.time.Instant
import androidx.core.content.ContextCompat

/**
 * Implements [HealthConnectHostApi] and exposes Health Connect step data to Flutter via Pigeon.
 *
 * @param context Application context.
 * @param onRequestPermissions Callback that triggers the ActivityResultLauncher in MainActivity.
 *        It receives the set of permission strings to request and a continuation lambda.
 */
class HealthConnectManager(
    private val context: Context,
    private val onRequestPermissions: (Set<String>, (Set<String>) -> Unit) -> Unit,
    private val onRequestActivityRecognition: ((Boolean) -> Unit) -> Unit,
) : HealthConnectHostApi {

    private val stepSensor = StepSensorManager(context)

    private val requiredPermissions = setOf(
        HealthPermission.getReadPermission(StepsRecord::class),
        HealthPermission.getReadPermission(DistanceRecord::class),
        // HealthPermission.getWritePermission(ExerciseSessionRecord::class),
    )

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    // HealthConnectHostApi implementation
    override fun checkAvailability(callback: (Result<Boolean>) -> Unit) {
        val status = HealthConnectClient.getSdkStatus(context)
        callback(Result.success(status == HealthConnectClient.SDK_AVAILABLE))
    }

    override fun requestPermissions(callback: (Result<Boolean>) -> Unit) {
        scope.launch {
            try {
                if (!isSdkAvailable()) {
                    callback(Result.success(false))
                    return@launch
                }
                val client = HealthConnectClient.getOrCreate(context)
                val grantedBefore = client.permissionController.getGrantedPermissions()
                if (grantedBefore.containsAll(requiredPermissions)) {
                    callback(Result.success(true))
                    return@launch
                }
                // Hand off to the Activity; result arrives via onRequestPermissions callback.
                Handler(Looper.getMainLooper()).post {
                    try {
                        onRequestPermissions(requiredPermissions) { granted ->
                            callback(Result.success(granted.containsAll(requiredPermissions)))
                        }
                    } catch (e: Exception) {
                        android.util.Log.e("HealthConnectManager", "permission launcher failed", e)
                        callback(Result.failure(e))
                    }
                }
            } catch (e: Exception) {
                android.util.Log.e("HealthConnectManager", "requestPermissions failed", e)
                callback(Result.failure(e))
            }
        }
    }

    override fun hasPermissions(callback: (Result<Boolean>) -> Unit) {
        scope.launch {
            try {
                if (!isSdkAvailable()) {
                    callback(Result.success(false))
                    return@launch
                }
                val client = HealthConnectClient.getOrCreate(context)
                val granted = client.permissionController.getGrantedPermissions()
                callback(Result.success(granted.containsAll(requiredPermissions)))
            } catch (e: Exception) {
                callback(Result.failure(e))
            }
        }
    }

    override fun getStepsBetween(
        startTimeMillis: Long,
        endTimeMillis: Long,
        callback: (Result<Long>) -> Unit,
    ) {
        scope.launch {
            try {
                if (!isSdkAvailable()) {
                    callback(Result.success(0L))
                    return@launch
                }
                val client = HealthConnectClient.getOrCreate(context)
                val response = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(StepsRecord.COUNT_TOTAL),
                        timeRangeFilter = TimeRangeFilter.between(
                            Instant.ofEpochMilli(startTimeMillis),
                            Instant.ofEpochMilli(endTimeMillis),
                        ),
                    ),
                )
                callback(Result.success(response[StepsRecord.COUNT_TOTAL] ?: 0L))
            } catch (e: Exception) {
                callback(Result.failure(e))
            }
        }
    }

    override fun getDistanceBetween(
        startTimeMillis: Long,
        endTimeMillis: Long,
        callback: (Result<Long>) -> Unit,
    ) {
        scope.launch {
            try {
                if (!isSdkAvailable()) {
                    callback(Result.success(0L)); return@launch
                }
                val client = HealthConnectClient.getOrCreate(context)
                val response = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(DistanceRecord.DISTANCE_TOTAL),
                        timeRangeFilter = TimeRangeFilter.between(
                            Instant.ofEpochMilli(startTimeMillis),
                            Instant.ofEpochMilli(endTimeMillis),
                        ),
                    ),
                )
                val meters = response[DistanceRecord.DISTANCE_TOTAL]?.inMeters ?: 0.0
                callback(Result.success((meters * 100).toLong())) // centimetres
            } catch (e: Exception) {
                callback(Result.failure(e))
            }
        }
    }

    override fun writeExerciseSession(
        guideName: String,
        startTimeMillis: Long,
        endTimeMillis: Long,
        steps: Long,
        distanceCentimetres: Long,
        callback: (Result<Boolean>) -> Unit,
    ) {
        scope.launch {
            try {
                if (!isSdkAvailable()) {
                    callback(Result.success(false))
                    return@launch
                }
                val client = HealthConnectClient.getOrCreate(context)
                val record = ExerciseSessionRecord(
                    startTime = Instant.ofEpochMilli(startTimeMillis),
                    startZoneOffset = null,
                    endTime = Instant.ofEpochMilli(endTimeMillis),
                    endZoneOffset = null,
                    metadata = Metadata.activelyRecorded(
                        device = Device(
                            manufacturer = Build.MANUFACTURER,
                            model = Build.MODEL,
                            type = Device.TYPE_PHONE,
                        ),
                    ),
                    exerciseType = ExerciseSessionRecord.EXERCISE_TYPE_WALKING,
                    title = guideName,
                )
                client.insertRecords(listOf(record))
                callback(Result.success(true))
            } catch (e: Exception) {
                callback(Result.failure(e))
            }
        }
    }

    // Helpers
    private fun isSdkAvailable(): Boolean =
        HealthConnectClient.getSdkStatus(context) == HealthConnectClient.SDK_AVAILABLE

    override fun isStepSensorAvailable(callback: (Result<Boolean>) -> Unit) {
        callback(Result.success(stepSensor.isAvailable()))
    }

    override fun startStepSensorTracking(callback: (Result<Unit>) -> Unit) {
        stepSensor.startSession()
        callback(Result.success(Unit))
    }

    override fun pauseStepSensorTracking(callback: (Result<Unit>) -> Unit) {
        stepSensor.pause()
        callback(Result.success(Unit))
    }

    override fun stopStepSensorTracking(callback: (Result<Long>) -> Unit) {
        callback(Result.success(stepSensor.stopAndGetSteps()))
    }

    override fun getCurrentSensorSteps(callback: (Result<Long>) -> Unit) {
        callback(Result.success(stepSensor.getCurrentSteps()))
    }

    override fun resumeStepSensorTracking(callback: (Result<Unit>) -> Unit) {
        stepSensor.resume()
        callback(Result.success(Unit))
    }

    override fun hasActivityRecognitionPermission(callback: (Result<Boolean>) -> Unit) {
        val granted = ContextCompat.checkSelfPermission(
            context,
            android.Manifest.permission.ACTIVITY_RECOGNITION
        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        callback(Result.success(granted))
    }

    override fun requestActivityRecognitionPermission(callback: (Result<Boolean>) -> Unit) {
        Handler(Looper.getMainLooper()).post {
            onRequestActivityRecognition { granted ->
                callback(Result.success(granted))
            }
        }
    }
}
