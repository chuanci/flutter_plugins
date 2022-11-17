import 'dart:io';

import 'package:build/src/builder/build_step.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:path/path.dart' as path;

class FreezedGenerator extends GeneratorForAnnotation<Freezed> {
  final RegExp importReg = RegExp("^import (.*);", multiLine: true);

  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is ClassElement) {
      final file = File(buildStep.inputId.path);
      String contents = file.readAsStringSync();

      ClassElement classElement = element;
      if (classElement.mixins.isEmpty) {
        String name = path.basenameWithoutExtension(buildStep.inputId.path);

        if (!contents.contains(getFreezedPart(name))) {
          final matchs = importReg.allMatches(contents);
          if (matchs.isNotEmpty) {
            String? s = matchs.last.group(0);
            if (s != null) {
              contents = contents.replaceFirst(
                s,
                [
                  s,
                  getFreezedPart(name),
                  getGPart(name),
                ].join("\n"),
              );
            }
          }
        }

        contents = contents.replaceFirst(
          RegExp("class ${element.name} {}"),
          getFreezedClassString(element.name),
        );

        file.writeAsStringSync(contents);
      }
    }
  }

  String getFreezedPart(String name) {
    return "part '$name.freezed.dart';";
  }

  String getGPart(String name) {
    return "part '$name.g.dart';";
  }

  String getFreezedClassString(String className) {
    return """class $className with _\$$className {
  const factory $className() = _$className;

  factory $className.fromJson(Map<String, Object?> json) => _\$${className}FromJson(json);
}
""";
  }
}
