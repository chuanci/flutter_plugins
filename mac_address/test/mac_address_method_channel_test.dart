import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mac_address/mac_address_method_channel.dart';

void main() {
  MethodChannelMacAddress platform = MethodChannelMacAddress();
  const MethodChannel channel = MethodChannel('mac_address');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getMacAddress("123123"), '42');
  });
}
