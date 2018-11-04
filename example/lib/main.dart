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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Add within rows to show natural size

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GoogleSignInButton(onPressed: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GoogleSignInButton(onPressed: () {}, darkMode: true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FacebookSignInButton(onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
