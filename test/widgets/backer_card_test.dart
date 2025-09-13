import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/presentation/widgets/backer_card.dart';

void main() {
  testWidgets('BackerCard renders correctly with normal data', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BackerCard(
            backerName: 'John Doe',
            amount: 'Rp 100.000',
            dateTime: '2 hari yang lalu',
          ),
        ),
      ),
    );

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Rp 100.000'), findsOneWidget);
    expect(find.text('2 hari yang lalu'), findsOneWidget);
  });

  testWidgets('BackerCard handles empty data gracefully', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BackerCard(
            backerName: '',
            amount: '',
            dateTime: '',
          ),
        ),
      ),
    );

    // Should not crash with empty data
    expect(find.byType(BackerCard), findsOneWidget);
  });

  testWidgets('BackerCard handles very long text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BackerCard(
            backerName: 'Very Long Name That Should Be Truncated When Text Size Is Large',
            amount: 'Rp 999.999.999.999.999',
            dateTime: 'Very long date time string that might cause overflow',
          ),
        ),
      ),
    );

    // Should not crash with long text
    expect(find.byType(BackerCard), findsOneWidget);
  });
}