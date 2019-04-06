import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

/// A sign in button that matches Twitter's look and feel.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class TwitterSignInButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;

  /// Creates a new button. The default button text is 'Sign in with Twitter'.
  TwitterSignInButton({
    @required this.onPressed,
    this.borderRadius = defaultBorderRadius,
    this.text = 'Sign in with Twitter',
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Color(0xFFE7E7E7),
      borderRadius: borderRadius,
      onPressed: onPressed,
      buttonBorderColor: Color(0xFFCCCCCC),
      buttonPadding: 0.0,
      children: <Widget>[
        // Facebook doesn't provide strict sizes, so this is a good
        // estimate of their examples within documentation.

        Image(
          image: AssetImage(
            "graphics/Twitter_Logo_Blue.png",
            package: "flutter_auth_buttons",
          ),
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            text,
            style: TextStyle(
              // default to the application font-style
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF555555),
            ),
          ),
        ),
      ],
    );
  }
}
