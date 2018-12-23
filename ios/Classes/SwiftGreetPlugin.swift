import Flutter
import UIKit

public class SwiftGreetPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "greet", binaryMessenger: registrar.messenger())
    let instance = SwiftGreetPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method=="getPlatformVersion"){
        result("iOS " + UIDevice.current.systemVersion)
    } else if(call.method=="hello") {
        result("Hello World")
    }
  }
}
