import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

const double defaultBorderRadius = 3.0;

/// A sign in button that matches Apple's design guidelines.
class AppleSignInButton extends StatelessWidget {
  final String text;
  final bool darkMode;
  final double borderRadius;
  final VoidCallback onPressed;

  /// Creates a new button. Set [darkMode] to `true` to use the dark
  /// black background variant with white text, otherwise an all-white background
  /// with dark text is used.
  AppleSignInButton(
      {this.onPressed,
      // 'Continue with Apple' is also an available variant depdening on App's sign-in experience.
      this.text = 'Sign in with Apple',
      this.darkMode = false,
      // Apple doesn't specify a border radius, but this looks about right.
      this.borderRadius = defaultBorderRadius,
      Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: darkMode ? Colors.black : Colors.white,
      borderRadius: borderRadius,
      onPressed: onPressed,
      buttonPadding: 0.0,
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Container(
                  height: 38.0,
                  width: 38.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(this.borderRadius),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "graphics/apple_logo_${darkMode ? "white" : "black"}.png",
                        package: "flutter_auth_buttons",
                      ),
                      height: 16.0,
                      width: 16.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 12.0, 36.0, 8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w500,
                    color: darkMode ? Colors.white : Colors.black,
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
