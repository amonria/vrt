
import 'vrt_platform_interface.dart';

class Vrt {
  Future<String?> getPlatformVersion() {
    return VrtPlatform.instance.getPlatformVersion();
  }
}
