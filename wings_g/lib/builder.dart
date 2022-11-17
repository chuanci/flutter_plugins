import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:wings_g/src/generators/freezed_generator.dart';

Builder freezedBuilder(BuilderOptions options) => LibraryBuilder(
      FreezedGenerator(),
      generatedExtension: '.wings.dart',
    );
