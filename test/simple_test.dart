import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Simple test to verify test setup', () {
    expect(1 + 1, 2);
  });

  test('String test', () {
    const text = 'Hello World';
    expect(text.length, 11);
    expect(text.contains('Hello'), true);
  });
}