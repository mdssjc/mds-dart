import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_design_patterns/constants.dart';

class MarkdownRepository {
  Future<String> get(String designPatternId) async {
    var path = '$markdownPath$designPatternId.md';
    var markdownString = await rootBundle.loadString(path);

    return markdownString;
  }
}
