import 'package:flutter/material.dart';

const double defaultBorderRadius = 3.0;

class StretchableButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final double buttonPadding;
  final Color buttonColor, splashColor;
  final Color buttonBorderColor;
  final List<Widget> children;

  StretchableButton({
    @required this.buttonColor,
    @required this.borderRadius,
    @required this.children,
    this.splashColor,
    this.buttonBorderColor,
    this.onPressed,
    this.buttonPadding,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var contents = List<Widget>.from(children);

        if (constraints.minWidth == 0) {
          contents.add(SizedBox.shrink());
        } else {
          contents.add(Spacer());
        }

        BorderSide bs;
        if (buttonBorderColor != null) {
          bs = BorderSide(
            color: buttonBorderColor,
          );
        } else {
          bs = BorderSide.none;
        }

        return ButtonTheme(
          height: 40.0,
          padding: EdgeInsets.all(buttonPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: bs,
          ),
          child: RaisedButton(
            onPressed: onPressed,
            color: buttonColor,
            splashColor: splashColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: contents,
            ),
          ),
        );
      },
    );
  }
}
