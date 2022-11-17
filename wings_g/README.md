# wings_g
自动生成代码

- freezed

## 导入
``` yaml
dependencies:
  freezed_annotation: ^2.2.0
  wings_g:
    git:
      url: git@github.com:chuanci/flutter_plugins.git
      ref: main
      path: wings_g/
      
dev_dependencies:
  json_serializable: ^6.5.4
  build_runner: ^2.3.2
  freezed: ^2.2.1
```

## 使用

1. 新建文件 `test.dart`
``` dart
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Test{}
```
2. 运行命令
> flutter pub run build_runner watch --delete-conflicting-outputs

或

> flutter pub run build_runner build --delete-conflicting-outputs

3. 查看文件`test.dart`
``` dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  const factory Test() = _Test;

  factory Test.fromJson(Map<String, Object?> json) =>
      _$TestFromJson(json);
}
```


