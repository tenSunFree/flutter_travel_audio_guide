package com.tensunfree.flutter_travel_audio_guide.flutter_travel_audio_guide

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager

class StepSensorManager(private val context: Context) : SensorEventListener {

    private val sensorManager =
        context.getSystemService(Context.SENSOR_SERVICE) as SensorManager

    // Steps accumulated across paused segments
    private var accumulatedSteps: Long = 0L
    // Baseline for the current active segment (-1 = not yet received first event)
    private var segmentBaseline: Long = -1L
    // Last raw counter value received
    private var lastRawSteps: Long = -1L

    fun isAvailable(): Boolean =
        sensorManager.getDefaultSensor(Sensor.TYPE_STEP_COUNTER) != null

    // Called once per session (new guide starts)
    fun startSession() {
        accumulatedSteps = 0L
        segmentBaseline = -1L
        lastRawSteps = -1L
        register()
    }

    // Playback paused — stop listening, keep accumulated
    fun pause() {
        if (segmentBaseline != -1L && lastRawSteps != -1L) {
            accumulatedSteps += (lastRawSteps - segmentBaseline)
        }
        segmentBaseline = -1L
        lastRawSteps = -1L
        unregister()
    }

    // Playback resumed — start listening again, continue from accumulated
    fun resume() {
        segmentBaseline = -1L // will be set on first event
        register()
    }

    // Session complete — returns final step count and cleans up
    fun stopAndGetSteps(): Long {
        if (segmentBaseline != -1L && lastRawSteps != -1L) {
            accumulatedSteps += (lastRawSteps - segmentBaseline)
        }
        unregister()
        val finalSteps = accumulatedSteps
        accumulatedSteps = 0L
        segmentBaseline = -1L
        lastRawSteps = -1L
        return finalSteps
    }

    fun getCurrentSteps(): Long {
        return if (segmentBaseline != -1L && lastRawSteps != -1L) {
            accumulatedSteps + (lastRawSteps - segmentBaseline)
        } else {
            accumulatedSteps
        }
    }

    override fun onSensorChanged(event: SensorEvent) {
        if (event.sensor.type != Sensor.TYPE_STEP_COUNTER) return
        val total = event.values[0].toLong()
        if (segmentBaseline == -1L) segmentBaseline = total
        lastRawSteps = total
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}

    private fun register() {
        val sensor = sensorManager.getDefaultSensor(Sensor.TYPE_STEP_COUNTER) ?: return
        sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL)
    }

    private fun unregister() {
        sensorManager.unregisterListener(this)
    }
}