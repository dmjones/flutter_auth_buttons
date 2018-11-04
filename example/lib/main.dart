import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Demo',
      home: Scaffold(
        body: Center(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(child: GoogleSignInButton(onPressed: () {})),
                GoogleSignInButton(onPressed: () {}, darkMode: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
