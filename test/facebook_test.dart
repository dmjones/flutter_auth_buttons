import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() {
  testWidgets('Check on tap works', (WidgetTester tester) async {
    var buttonKey = UniqueKey();

    var testVal = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: FacebookSignInButton(
            key: buttonKey,
            onPressed: () {
              testVal = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(buttonKey));
    expect(testVal, true);
  });

  testWidgets('Check default text is used', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: FacebookSignInButton(
            onPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text("Continue with Facebook"), findsOneWidget);
  });

  testWidgets('Check supplied text is used', (WidgetTester tester) async {
    const suppliedText = "Hello, World!";

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: FacebookSignInButton(
            onPressed: () {},
            text: suppliedText,
          ),
        ),
      ),
    );

    expect(find.text(suppliedText), findsOneWidget);
  });
}
