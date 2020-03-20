import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

/// A sign in button that matches Google's design guidelines.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class GoogleSignInButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final bool darkMode;
  final double borderRadius;
  final VoidCallback onPressed;
  final Color splashColor;

  /// Creates a new button. Set [darkMode] to `true` to use the dark
  /// blue background variant with white text, otherwise an all-white background
  /// with dark text is used.
  GoogleSignInButton(
      {this.onPressed,
      this.text = 'Sign in with Google',
      this.textStyle,
      this.splashColor,
      this.darkMode = false,
      // Google doesn't specify a border radius, but this looks about right.
      this.borderRadius = defaultBorderRadius,
      Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: darkMode ? Color(0xFF4285F4) : Colors.white,
      borderRadius: borderRadius,
      splashColor: splashColor,
      onPressed: onPressed,
      buttonPadding: 0.0,
      children: <Widget>[
        // The Google design guidelines aren't consistent. The dark mode
        // seems to have a perfect square of white around the logo, with a
        // thin 1dp (ish) border. However, since the height of the button
        // is 40dp and the logo is 18dp, it suggests the bottom and top
        // padding is (40 - 18) * 0.5 = 11. That's 10dp once we account for
        // the thin border.
        //
        // The design guidelines suggest 8dp padding to the left of the
        // logo, which doesn't allow us to center the image (given the 10dp
        // above). Something needs to give - either the 8dp is wrong or the
        // 40dp should be 36dp. I've opted to increase left padding to 10dp.
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: 38.0, // 40dp - 2*1dp border
            width: 38.0, // matches above
            decoration: BoxDecoration(
              color: darkMode ? Colors.white : null,
              borderRadius: BorderRadius.circular(this.borderRadius),
            ),
            child: Center(
              child: Image(
                image: AssetImage(
                  "graphics/google-logo.png",
                  package: "flutter_auth_buttons",
                ),
                height: 18.0,
                width: 18.0,
              ),
            ),
          ),
        ),

        SizedBox(width: 14.0 /* 24.0 - 10dp padding */),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
          child: Text(
            text,
            style: textStyle ?? TextStyle(
              fontSize: 18.0,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              color: darkMode ? Colors.white : Colors.black.withOpacity(0.54),
            ),
          ),
        ),
      ],
    );
  }
}
