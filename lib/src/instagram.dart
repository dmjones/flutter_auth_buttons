import 'package:flutter/material.dart';

/// A sign in button for the Instagram graphic.
///
class InstagramSignInButton extends StatelessWidget {
  final String text;
  final bool darkMode;
  final VoidCallback onPressed;

  /// Creates a new button. Set [darkMode] to `true` to use the dark graphic.
  InstagramSignInButton(
      {@required this.onPressed,
      this.text = 'Sign in with Instagram',
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
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 38.0, // 40dp - 2*1dp border
                width: 38.0, // matches above
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage( darkMode ? "graphics/Instagram_Logo_Dark.png" : "graphics/Instagram_Logo_Light.png",
                      package: "flutter_auth_buttons",
                    ),
                    height: 28.0,
                    width: 28.0,
                  ),
                ),
              ),
            ),

            SizedBox(width: 14.0 /* 24.0 - 10dp padding */),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
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
