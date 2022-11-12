import 'device_info_platform_interface.dart';

class DeviceInfo {
  Future<String?> getPlatformVersion() {
    return DeviceInfoPlatform.instance.getPlatformVersion();
  }

  Future<String?> getDeviceModel() {
    return DeviceInfoPlatform.instance.getDeviceModel();
  }

  Future<String?> getDisplaySize() {
    return DeviceInfoPlatform.instance.getDisplaySize();
  }
}
