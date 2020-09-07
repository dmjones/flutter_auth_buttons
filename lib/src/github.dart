import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

/// A sign in button that matches Github's design guidelines.
class GithubSignInButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color splashColor;
  final bool centered;

  /// Creates a new button. The default button text is 'Continue wuth Github'.
  /// Github also allows simply 'Sign in'.
  GithubSignInButton({
    this.onPressed,
    this.borderRadius = 0.0,
    this.text = 'Continue with Github',
    this.textStyle,
    this.splashColor,
    this.centered = false,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Colors.black,
      borderRadius: borderRadius,
      splashColor: splashColor,
      buttonBorderColor: Color(0xFF8C8C8C),
      onPressed: onPressed,
      buttonPadding: 10.0, // This is an estimate
      centered: centered,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2.0), // adds to 10 to make 12
          child: Image(
            image: AssetImage(
              "graphics/github-logo.png",
              package: "flutter_auth_buttons",
            ),
            height: 21.0, // 41px - 2x 10px padding
            width: 21.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 2.0),
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  // Should be Segoe 15px, but can't find that font and 15px
                  // seems too small...
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
          ),
        ),
      ],
    );
  }
}
