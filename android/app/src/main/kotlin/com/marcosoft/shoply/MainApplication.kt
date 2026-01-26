package com.marcosoft.shoply

import io.flutter.app.FlutterApplication
import com.facebook.FacebookSdk
import com.facebook.appevents.AppEventsLogger

class MainApplication : FlutterApplication() {
    override fun onCreate() {
        super.onCreate()
        
        // Initialize Facebook SDK before any plugins are registered
        // This prevents the error when Firebase Cloud Messaging creates a background engine
        FacebookSdk.sdkInitialize(applicationContext)
        AppEventsLogger.activateApp(this)
    }
}
