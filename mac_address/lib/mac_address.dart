import 'mac_address_platform_interface.dart';

class MacAddress {
  Future<String?> get(String defaultMacAddress) async {
    return MacAddressPlatform.instance.getMacAddress(defaultMacAddress);
  }
}
