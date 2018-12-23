import 'dart:async';

import 'package:flutter/services.dart';

class Greet {
  static const MethodChannel _channel =
      const MethodChannel('greet');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// greetプラグインからhelloをプロパティのように呼び出す方法
  static Future<String> get hello async {
    final String hello = await _channel.invokeMethod('hello');
    return hello;
  }

  /// greetプラグインからhelloを関数のように呼び出す方法
  Future<String> hello2() async {
    final String hello = await _channel.invokeMethod('hello');
    return hello;
  }
}
