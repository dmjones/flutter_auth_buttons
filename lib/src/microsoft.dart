import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

/// A sign in button that matches Microsoft's design guidelines.
class MicrosoftSignInButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double borderRadius;
  final bool darkMode;
  final Color splashColor;

  /// Creates a new button. The default button text is 'Sign in with Microsoft'.
  /// Microsoft also allows simply 'Sign in'.
  MicrosoftSignInButton({
    this.onPressed,
    this.borderRadius = 0.0,
    this.text = 'Sign in with Microsoft',
    this.textStyle,
    this.darkMode = false,
    this.splashColor,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: darkMode ? Color(0xFF2F2F2F) : Color(0xFFFFFFFF),
      borderRadius: borderRadius,
      splashColor: splashColor,
      buttonBorderColor: darkMode ? null : Color(0xFF8C8C8C),
      onPressed: onPressed,
      buttonPadding: 10.0, // This is an estimate
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2.0), // adds to 10 to make 12
          child: Image(
            image: AssetImage(
              "graphics/ms-symbollockup_mssymbol_19.png",
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
            style: textStyle ?? TextStyle(
              // Should be Segoe 15px, but can't find that font and 15px
              // seems too small...
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: darkMode ? Colors.white : Color(0xFF5E5E5E),
            ),
          ),
        ),
      ],
    );
  }
}
