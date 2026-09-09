import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/start_screen.dart';

void main() {
  testWidgets('StartScreen displays image test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: StartScreen(),
        ),
      ),
    );

    // Verify that the StartScreen and Image are present.
    expect(find.byType(StartScreen), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}