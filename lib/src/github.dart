import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/src/button.dart';

enum GithubButtonStyle { white, whiteOutline, black }

/// A sign in button for Github
class GithubSignInButton extends StatelessWidget {
  final String text;
  final GithubButtonStyle style;
  final double borderRadius;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final Color splashColor;

  /// Creates a new button. Set [style] to `GithubButtonStyle.white` to use the white background and 'dark' text.
  /// by Default github button style is set to 'dark'[Color(0xff24292e)] with white text.

  GithubSignInButton({
    this.onPressed,
    // 'Continue with Github' is also an available variant depending on App's sign-in experience.
    this.text = 'Sign in with Github',
    this.textStyle,
    this.splashColor,
    this.style = GithubButtonStyle.black,
    this.borderRadius = defaultBorderRadius,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor:
          style == GithubButtonStyle.black ? Color(0xff24292e) : Colors.white,
      borderRadius: borderRadius,
      splashColor: splashColor,
      buttonBorderColor:
          style == GithubButtonStyle.whiteOutline ? Color(0xff24292e) : null,
      onPressed: onPressed,
      buttonPadding: 0.0,
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
                        "graphics/github_logo_${style == GithubButtonStyle.black ? "white" : "black"}.png",
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
                        color: style == GithubButtonStyle.black
                            ? Color(0xFFf6f8fa)
                            : Color(0xff24292e),
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
