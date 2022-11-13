import Flutter
import UIKit

public class SwiftDeviceInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "device_info", binaryMessenger: registrar.messenger())
    let instance = SwiftDeviceInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if (call.method == "getPlatformVersion") {
          result("iOS " + UIDevice.current.systemVersion)
          } else if (call.method == "getDisplaySize") {
              let screenRect = UIScreen.main.bounds
              let screenWidth = screenRect.size.width
              let screenHeight = screenRect.size.height
              result("\(screenWidth) x \(screenHeight)")
          } else if (call.method == "getDeviceModel") {
              result("apple " + UIDevice.current.name)
          }
     
  }
}
