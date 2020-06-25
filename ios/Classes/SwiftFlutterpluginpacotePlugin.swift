import Flutter
import UIKit

public class SwiftFlutterpluginpacotePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterpluginpacote", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterpluginpacotePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
