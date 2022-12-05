// import 'package:flutter_test/flutter_test.dart';
// import 'package:mac_address/mac_address.dart';
// import 'package:mac_address/mac_address_method_channel.dart';
// import 'package:mac_address/mac_address_platform_interface.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockMacAddressPlatform
//     with MockPlatformInterfaceMixin
//     implements MacAddressPlatform {
//   @override
//   Future<String?> getMacAddress() => Future.value('42');
// }
//
// void main() {
//   final MacAddressPlatform initialPlatform = MacAddressPlatform.instance;
//
//   test('$MethodChannelMacAddress is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelMacAddress>());
//   });
//
//   test('getPlatformVersion', () async {
//     MacAddress macAddressPlugin = MacAddress();
//     MockMacAddressPlatform fakePlatform = MockMacAddressPlatform();
//     MacAddressPlatform.instance = fakePlatform;
//
//     expect(await macAddressPlugin.get(), '42');
//   });
// }
