import 'package:flutter/material.dart';

/// A sign in button for the Github graphic.
///
class GithubSignInButton extends StatelessWidget {
  final String text;
  final bool darkMode;
  final VoidCallback onPressed;

  /// Creates a new button. Set [darkMode] to `true` to use the dark graphic.
  GithubSignInButton(
      {@required this.onPressed,
      this.text = 'Sign in with Github',
      this.darkMode = false,
      Key key})
      : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 40.0,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: RaisedButton(
        onPressed: onPressed,
        color: darkMode ? Colors.black : Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage( darkMode ? "graphics/Github_Logo_Dark.png" : "graphics/Github_Logo_Light.png",
                package: "flutter_auth_buttons",
              ),
              height: 28.0,
              width: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(9.0, 8.0, 8.0, 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  color:
                      darkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
