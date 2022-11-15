import 'mac_address_platform_interface.dart';

class MacAddress {
  Future<String?> get() {
    return MacAddressPlatform.instance.getMacAddress();
  }
}
