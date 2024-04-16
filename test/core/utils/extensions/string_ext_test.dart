import 'package:flutter_test/flutter_test.dart';
import 'package:start_project/core/utils/extensions/string_ext.dart';

void main() {
  group('String extension tests', () {
    late String? nullString;
    late String emptyString;
    late String nonEmptyString;

    setUp(() {
      nullString = null;
      emptyString = '';
      nonEmptyString = 'Hello';
    });

    tearDown(() {
      nullString = null;
    });

    test('orEmpty should return empty string if input is null', () {
      expect(nullString.orEmpty, equals(''));
    });

    test('orEmpty should return the input string itself if not null', () {
      expect(nonEmptyString.orEmpty, equals('Hello'));
    });

    test('isBlank should return true for null or empty string', () {
      expect(nullString.isBlank, isTrue);
      expect(emptyString.isBlank, isTrue);
    });

    test('isBlank should return false for non-empty string', () {
      expect(nonEmptyString.isBlank, isFalse);
    });

    test('isNotBlank should return false for null or empty string', () {
      expect(nullString.isNotBlank, isFalse);
      expect(emptyString.isNotBlank, isFalse);
    });

    test('isNotBlank should return true for non-empty string', () {
      expect(nonEmptyString.isNotBlank, isTrue);
    });
  });
}