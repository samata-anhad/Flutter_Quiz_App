
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/start_screen.dart';

void main() {
  testWidgets('StartScreen displays image test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StartScreen(() {}),
        ),
      ),
    );

    expect(find.byType(StartScreen), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}

