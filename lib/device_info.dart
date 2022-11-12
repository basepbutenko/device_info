
import 'device_info_platform_interface.dart';

class DeviceInfo {
  Future<String?> getPlatformVersion() {
    return DeviceInfoPlatform.instance.getPlatformVersion();
  }
}
