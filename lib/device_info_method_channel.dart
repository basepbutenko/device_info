import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_info_platform_interface.dart';

/// An implementation of [DeviceInfoPlatform] that uses method channels.
class MethodChannelDeviceInfo extends DeviceInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getDeviceModel() async {
    final model = await methodChannel.invokeMethod<String>('getDeviceModel');
    return model;
  }

  @override
  Future<String?> getDisplaySize() async {
    final size = await methodChannel.invokeMethod<String>('getDisplaySize');
    return size;
  }
}
