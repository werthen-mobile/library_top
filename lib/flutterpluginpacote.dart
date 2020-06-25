import 'dart:async';

import 'package:flutter/services.dart';

class Flutterpluginpacote {
  static const MethodChannel _channel =  const MethodChannel('flutterpluginpacote');
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> share( String text) {
   print('Testando biblioteca: ' + text);
  }
}
