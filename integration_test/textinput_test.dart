import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:text_drive/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "failing test example",
    (WidgetTester tester) async {
      tester.testTextInput.register();
      await tester.pumpWidget(const App());

      final input = find.byKey(const Key('field'));
      expect(input, findsOneWidget);

      expect(find.text('test'), findsOneWidget);

      await tester.tap(input);
      await tester.enterText(input, 'Hello');

      // same result with `updateEditingValue`
      // (cf.https://flutter.dev/docs/release/breaking-changes/enterText-trailing-caret)
      // await tester.showKeyboard(input);
      // await tester.pumpAndSettle();
      //tester.testTextInput.updateEditingValue(
      //  const TextEditingValue(text: 'Hello'),
      //);

      await tester.pump();

      expect(find.text('Hello'), findsNWidgets(2));
    },
    semanticsEnabled:false,
  );
}
