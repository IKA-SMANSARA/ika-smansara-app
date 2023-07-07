import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/app/app.dart';
import 'package:ika_smansara/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
