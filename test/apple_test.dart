import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/apple.dart';
import 'package:flutter_auth_buttons/src/button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Check the onTap of the Button works',
      (WidgetTester tester) async {
    var appleButtonKey = UniqueKey();
    var isTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            key: appleButtonKey,
            onPressed: () {
              isTapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(appleButtonKey));
    expect(isTapped, true);
  });

  testWidgets('Check the default text provided is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(),
        ),
      ),
    );

    expect(find.text('Sign in with Apple'), findsOneWidget);
  });

  testWidgets('Check the provided text is used', (WidgetTester tester) async {
    const buttonText = 'Sign up with Apple';
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            text: buttonText,
          ),
        ),
      ),
    );

    expect(find.text(buttonText), findsOneWidget);
  });

  testWidgets('Check the default text style of the button is used',
      (WidgetTester tester) async {
    const defaultTextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(),
        ),
      ),
    );

    var text = find.byType(Text).evaluate().toList()[0].widget as Text;
    expect(text.style.fontSize, defaultTextStyle.fontSize);
    expect(text.style.fontWeight, defaultTextStyle.fontWeight);
    expect(text.style.color, defaultTextStyle.color);
  });

  testWidgets('Check the provided text style of the button is used',
      (WidgetTester tester) async {
    const providedTextStyle = TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w900,
      color: Colors.white,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            textStyle: providedTextStyle,
          ),
        ),
      ),
    );

    final AppleSignInButton appleSignInButton =
        tester.firstWidget(find.byType(AppleSignInButton));
    expect(appleSignInButton.textStyle, providedTextStyle);
  });

  testWidgets('Check supplied splash color is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            onPressed: () {},
            splashColor: Colors.white,
          ),
        ),
      ),
    );

    var button = find.byType(StretchableButton).evaluate().toList()[0].widget
        as StretchableButton;
    expect(button.splashColor, Colors.white);
  });

  testWidgets('Check default splash color is used',
      (WidgetTester tester) async {
    ButtonThemeData buttonTheme;

    await tester.pumpWidget(MaterialApp(
      home: Builder(
        builder: (BuildContext context) {
          buttonTheme = ButtonTheme.of(context);
          return AppleSignInButton(
            onPressed: () {},
          );
        },
      ),
    ));

    var button =
        find.byType(RaisedButton).evaluate().toList()[0].widget as RaisedButton;
    expect(buttonTheme.getSplashColor(button),
        buttonTheme.getTextColor(button).withOpacity(0.12));
  });

  testWidgets('Check the default AppleButtonStyle option is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(),
        ),
      ),
    );
    final AppleSignInButton appleSignInButton =
        tester.firstWidget(find.byType(AppleSignInButton));
    expect(appleSignInButton.style, AppleButtonStyle.white);
  });

  testWidgets('Check the provided AppleButtonStyle option is used',
      (WidgetTester tester) async {
    final appleButtonStyle = AppleButtonStyle.black;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            style: appleButtonStyle,
          ),
        ),
      ),
    );

    final AppleSignInButton appleSignInButton =
        tester.firstWidget(find.byType(AppleSignInButton));
    expect(appleSignInButton.style, appleButtonStyle);
  });

  testWidgets('Check the default border radius of the button is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(),
        ),
      ),
    );
    final AppleSignInButton appleSignInButton =
        tester.firstWidget(find.byType(AppleSignInButton));
    expect(appleSignInButton.borderRadius, 3.0);
  });

  testWidgets('Check the provided border radius of the button is used',
      (WidgetTester tester) async {
    var appleButtonKey = UniqueKey();

    var borderRadius = 20.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: AppleSignInButton(
            key: appleButtonKey,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );

    final AppleSignInButton appleSignInButton =
        tester.firstWidget(find.byType(AppleSignInButton));
    expect(appleSignInButton.borderRadius, borderRadius);
  });
}
