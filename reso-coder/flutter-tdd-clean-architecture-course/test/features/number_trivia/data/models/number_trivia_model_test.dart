import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/data/models/number_trivia_model.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/domain/entities/number_triviatest.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  test('should be a subclass of NumberTrivia entity', () {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test(
      'should return a valid model when the JSON number is an integer',
      () {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia.json'));

        final result = NumberTriviaModel.fromJson(jsonMap);

        expect(result, tNumberTriviaModel);
      },
    );

    test(
      'should return a valid model when the JSON number is regarded as a double',
      () async {
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia_double.json'));

        final result = NumberTriviaModel.fromJson(jsonMap);

        expect(result, tNumberTriviaModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = tNumberTriviaModel.toJson();

        final expectedJsonMap = {
          "text": "Test Text",
          "number": 1,
        };

        expect(result, expectedJsonMap);
      },
    );
  });
}
