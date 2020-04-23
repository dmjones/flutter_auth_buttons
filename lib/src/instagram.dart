import 'package:flutter/material.dart';

import 'button.dart';

/// A sign in button that matches Instagram's design guidelines.
///
/// The button text can be overridden, however the default text is recommended
/// in order to be compliant with the design guidelines and to maximise
/// conversion.
class InstagramSignInButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;
  InstagramSignInButton({
    this.onPressed,
    this.text="Sign in with Instagram",
    this.borderRadius=5
    });
  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Colors.white,
      splashColor: Colors.blue,
      buttonPadding: 1,
      buttonBorderColor: Colors.purpleAccent,
      borderRadius: borderRadius,
      onPressed: onPressed,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Image.asset(
                'graphics/instagram_logo.png',
                package: 'flutter_auth_buttons',
                height: 30,
                width: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(text),
            )
          ],
        )
      ]
    );
  }

}