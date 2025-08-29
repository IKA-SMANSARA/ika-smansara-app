import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/domain/entities/result.dart';

void main() {
  group('Result', () {
    group('Success', () {
      test('should return true for isSuccess', () {
        const result = Success<String>('test data');

        expect(result.isSuccess, true);
        expect(result.isFailed, false);
      });

      test('should return correct resultValue', () {
        const result = Success<String>('test data');

        expect(result.resultValue, 'test data');
        expect(result.errorMessage, null);
      });

      test('should handle different data types', () {
        const intResult = Success<int>(42);
        const boolResult = Success<bool>(true);
        const listResult = Success<List<String>>(['a', 'b', 'c']);

        expect(intResult.resultValue, 42);
        expect(boolResult.resultValue, true);
        expect(listResult.resultValue, ['a', 'b', 'c']);
      });
    });

    group('Failed', () {
      test('should return true for isFailed', () {
        const result = Failed<String>('error message');

        expect(result.isFailed, true);
        expect(result.isSuccess, false);
      });

      test('should return correct errorMessage', () {
        const result = Failed<String>('error message');

        expect(result.errorMessage, 'error message');
        expect(result.resultValue, null);
      });

      test('should handle empty error message', () {
        const result = Failed<String>('');

        expect(result.errorMessage, '');
        expect(result.resultValue, null);
      });
    });

    group('Factory constructors', () {
      test('should create Success using factory constructor', () {
        final result = Result.success('test data');

        expect(result.isSuccess, true);
        expect(result.resultValue, 'test data');
      });

      test('should create Failed using factory constructor', () {
        final result = Result.failed('error message');

        expect(result.isFailed, true);
        expect(result.errorMessage, 'error message');
      });
    });

    group('Type safety', () {
      test('should handle generic types correctly', () {
        const stringResult = Success<String>('string');
        const intResult = Success<int>(123);

        expect(stringResult.resultValue, isA<String>());
        expect(intResult.resultValue, isA<int>());
      });

      test('should work with complex types', () {
        final mapResult = Success<Map<String, dynamic>>({'key': 'value'});
        final listResult = Success<List<int>>([1, 2, 3]);

        expect(mapResult.resultValue, isA<Map<String, dynamic>>());
        expect(listResult.resultValue, isA<List<int>>());
      });
    });

    group('Edge cases', () {
      test('should handle null values in Success', () {
        const result = Success<String?>(null);

        expect(result.isSuccess, true);
        expect(result.resultValue, null);
        expect(result.errorMessage, null);
      });

      test('should handle null in Failed resultValue', () {
        const result = Failed<int>('error');

        expect(result.isFailed, true);
        expect(result.resultValue, null);
        expect(result.errorMessage, 'error');
      });
    });
  });
}