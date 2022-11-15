# mac_address


``` yaml
dependencies:
  mac_address:
    git:
      url: git@github.com:chuanci/flutter_plugins.git
      ref: main
      path: mac_address/
```


获取mac地址

``` dart
String? mac = await MacAddress().get();
```
