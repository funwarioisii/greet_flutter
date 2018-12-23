package me.funwarioisii.greet

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class GreetPlugin: MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "greet")
      channel.setMethodCallHandler(GreetPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when {
        call.method == "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
        call.method == "hello" -> result.success("Hello World")
        else -> result.notImplemented()
    }
  }
}
