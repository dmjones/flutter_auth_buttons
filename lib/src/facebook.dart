import 'package:flutter/material.dart';

/// A sign in button that matches Facebook's design guidelines.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class FacebookSignInButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  /// Creates a new button. The default button text is 'Continue with Facebook',
  /// which apparently results in higher conversion. 'Login with Facebook' is
  /// another suggestion.
  FacebookSignInButton(
      {@required this.onPressed, this.text = 'Continue with Facebook', Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Facebook doesn't mandate a button size, so we match the Google button.
        return ButtonTheme(
          height: 40.0,
          padding: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: RaisedButton(
            onPressed: onPressed,
            color: Color(0xFF4267B2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Facebook doesn't provide strict sizes, so this is a good
                // estimate of their examples within documentation.

                Image(
                  image: AssetImage(
                    "graphics/flogo-HexRBG-Wht-100.png",
                    package: "flutter_auth_buttons",
                  ),
                  height: 24.0,
                  width: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 10.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      // default to the application font-style
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                constraints.minWidth == 0 ? SizedBox.shrink() : Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
