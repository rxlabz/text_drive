// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:text_drive/main.dart';

void main() {
  testWidgets('Text input test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    final input = find.byKey(const Key('field'));
    expect(input, findsOneWidget);

    expect(find.text('test'), findsOneWidget);

    await tester.tap(input);
    await tester.enterText(input, 'Hello');

    await tester.pump();

    expect(find.text('Hello'), findsNWidgets(2));
  });
}
