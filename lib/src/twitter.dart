import 'package:flutter/material.dart';

/// A sign in button that matches Twitter's look and feel.
class TwitterSignInButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  /// Creates a new button. The default button text is 'Sign in with Twitter'.
  TwitterSignInButton(
      {@required this.onPressed, this.text = 'Sign in with Twitter', Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // Twitter doesn't mandate a button size, so we match the Google button.
    return ButtonTheme(
      height: 40.0,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: Color(0xFFCCCCCC),
        ),
      ),
      child: RaisedButton(
        onPressed: onPressed,
        color: Color(0xFFE7E7E7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
        ),
      ),
    );
  }
}
