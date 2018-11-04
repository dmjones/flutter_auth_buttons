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
          child: GoogleSignInButton(
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
          child: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text("Sign in with Google"), findsOneWidget);
  });

  testWidgets('Check supplied text is used', (WidgetTester tester) async {
    const suppliedText = "Hello, World!";

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: GoogleSignInButton(
            onPressed: () {},
            text: suppliedText,
          ),
        ),
      ),
    );

    expect(find.text(suppliedText), findsOneWidget);
  });

  testWidgets('Check dark mode works', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: GoogleSignInButton(
            onPressed: () {},
            darkMode: true,
          ),
        ),
      ),
    );

    expect(find.byType(RaisedButton), findsOneWidget);

    var button =
        find.byType(RaisedButton).evaluate().toList()[0].widget as RaisedButton;
    expect(button.color, Color(0xFF4285F4));

    var text = find.byType(Text).evaluate().toList()[0].widget as Text;
    expect(text.style.color, Colors.white);
  });

  testWidgets('Check light mode works', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: GoogleSignInButton(
            onPressed: () {},
          ),
        ),
      ),
    );

    expect(find.byType(RaisedButton), findsOneWidget);

    var button =
        find.byType(RaisedButton).evaluate().toList()[0].widget as RaisedButton;

    expect(button.color, Colors.white);

    var text = find.byType(Text).evaluate().toList()[0].widget as Text;
    expect(text.style.color, Colors.black.withOpacity(0.54));
  });
}
