import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_auth_buttons/src/button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Check the onTap of the Button works',
      (WidgetTester tester) async {
    var microsoftButtonKey = UniqueKey();
    var isTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
            key: microsoftButtonKey,
            onPressed: () {
              isTapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byKey(microsoftButtonKey));
    expect(isTapped, true);
  });

  testWidgets('Check the default text provided is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(),
        ),
      ),
    );

    expect(find.text('Sign in with Microsoft'), findsOneWidget);
  });

  testWidgets('Check the provided text is used', (WidgetTester tester) async {
    const buttonText = 'Sign up with Microsoft';
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
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
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Color(0xFF5E5E5E),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(),
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
      color: Color(0xff000000),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
            textStyle: providedTextStyle,
          ),
        ),
      ),
    );

    final MicrosoftSignInButton microsoftSignInButton =
        tester.firstWidget(find.byType(MicrosoftSignInButton));
    expect(microsoftSignInButton.textStyle, providedTextStyle);
  });

  testWidgets('Check supplied splash color is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
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
          return MicrosoftSignInButton(
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

  testWidgets('Check the default dark mode option of the button is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(),
        ),
      ),
    );
    final MicrosoftSignInButton microsoftSignInButton =
        tester.firstWidget(find.byType(MicrosoftSignInButton));
    expect(microsoftSignInButton.darkMode, false);
  });

  testWidgets('Check the provided dark mode option of the button is used',
      (WidgetTester tester) async {
    var microsoftButtonKey = UniqueKey();

    var darkMode = true;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
            key: microsoftButtonKey,
            darkMode: darkMode,
          ),
        ),
      ),
    );

    final MicrosoftSignInButton microsoftSignInButton =
        tester.firstWidget(find.byType(MicrosoftSignInButton));
    expect(microsoftSignInButton.darkMode, darkMode);
  });

  testWidgets('Check the default border radius of the button is used',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(),
        ),
      ),
    );
    final MicrosoftSignInButton microsoftSignInButton =
        tester.firstWidget(find.byType(MicrosoftSignInButton));
    expect(microsoftSignInButton.borderRadius, 0.0);
  });

  testWidgets('Check the provided border radius of the button is used',
      (WidgetTester tester) async {
    var microsoftButtonKey = UniqueKey();

    var borderRadius = 20.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MicrosoftSignInButton(
            key: microsoftButtonKey,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );

    final MicrosoftSignInButton microsoftSignInButton =
        tester.firstWidget(find.byType(MicrosoftSignInButton));
    expect(microsoftSignInButton.borderRadius, borderRadius);
  });
}
