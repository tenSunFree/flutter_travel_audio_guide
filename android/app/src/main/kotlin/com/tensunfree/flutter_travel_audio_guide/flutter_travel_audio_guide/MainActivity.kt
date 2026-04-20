package com.tensunfree.flutter_travel_audio_guide.flutter_travel_audio_guide

import androidx.activity.result.contract.ActivityResultContracts
import androidx.health.connect.client.PermissionController
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine

/**
 * FlutterFragmentActivity (not FlutterActivity) is required because
 * registerForActivityResult() is only available on ComponentActivity,
 * which FlutterFragmentActivity inherits from via FragmentActivity.
 * Plain FlutterActivity extends android.app.Activity directly and does
 * not expose that API.
 */
class MainActivity : FlutterFragmentActivity() {

    /** Holds the continuation supplied by [HealthConnectManager.requestPermissions]. */
    private var permissionCallback: ((Set<String>) -> Unit)? = null

    private var activityRecognitionCallback: ((Boolean) -> Unit)? = null

    private val requestActivityRecognition =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
            activityRecognitionCallback?.invoke(granted)
            activityRecognitionCallback = null
        }

    /**
     * ActivityResultLauncher for Health Connect permissions.
     * Must be registered before onStart(), so we register it at field-init time.
     */
    private val requestHealthPermissions =
        registerForActivityResult(
            PermissionController.createRequestPermissionResultContract(),
        ) { granted: Set<String> ->
            android.util.Log.d("HealthConnectManager", "permission launcher result: $granted")
            permissionCallback?.invoke(granted)
            permissionCallback = null
        }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val manager = HealthConnectManager(
            context = this,
            onRequestPermissions = { permissions, callback ->
                android.util.Log.d(
                    "HealthConnectManager",
                    "permission launcher requested: $permissions"
                )
                permissionCallback = callback
                runOnUiThread { requestHealthPermissions.launch(permissions) }
            },
            onRequestActivityRecognition = { callback ->
                activityRecognitionCallback = callback
                runOnUiThread {
                    requestActivityRecognition.launch(
                        android.Manifest.permission.ACTIVITY_RECOGNITION
                    )
                }
            }
        )


        HealthConnectHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, manager)
    }
}
