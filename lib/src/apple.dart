import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

const double defaultBorderRadius = 3.0;

enum AppleButtonStyle { white, whiteOutline, black }

/// A sign in button that matches Apple's design guidelines.
class AppleSignInButton extends StatelessWidget {
  final String text;
  final AppleButtonStyle style;
  final double borderRadius;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final Color splashColor;
  final bool centered;

  /// Creates a new button. Set [darkMode] to `true` to use the dark
  /// black background variant with white text, otherwise an all-white background
  /// with dark text is used.
  AppleSignInButton(
      {this.onPressed,
      // 'Continue with Apple' is also an available variant depdening on App's sign-in experience.
      this.text = 'Sign in with Apple',
      this.textStyle,
      this.splashColor,
      this.style = AppleButtonStyle.white,
      // Apple doesn't specify a border radius, but this looks about right.
      this.borderRadius = defaultBorderRadius,
      this.centered = false,
      Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor:
          style == AppleButtonStyle.black ? Colors.black : Colors.white,
      borderRadius: borderRadius,
      splashColor: splashColor,
      buttonBorderColor:
          style == AppleButtonStyle.whiteOutline ? Colors.black : null,
      onPressed: onPressed,
      buttonPadding: 0.0,
      centered: centered,
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 22.0, bottom: 3.0),
                child: Container(
                  height: 38.0,
                  width: 32.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(this.borderRadius),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "graphics/apple_logo_${style == AppleButtonStyle.black ? "white" : "black"}.png",
                        package: "flutter_auth_buttons",
                      ),
                      height: 17.0,
                      width: 17.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 32.0, 8.0),
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                        fontSize: 16.0,
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w500,
                        color: style == AppleButtonStyle.black
                            ? Colors.white
                            : Colors.black,
                      ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
