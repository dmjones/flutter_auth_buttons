import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const padding = 25.0;

    return MaterialApp(
      title: 'Button Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter_auth_buttons"),
        ),
        backgroundColor: Color.fromARGB(0xFF, 0xF0, 0xF0, 0xF0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: padding),
                AppleSignInButton(expanded: true, onPressed: () {}),
                AppleSignInButton(expanded: true,
                    onPressed: () {}, style: AppleButtonStyle.whiteOutline),
                AppleSignInButton(expanded: true,
                    onPressed: () {}, style: AppleButtonStyle.black),
                SizedBox(height: padding),
                GoogleSignInButton(expanded: true, onPressed: () {}),
                GoogleSignInButton(expanded: true, onPressed: () {}, darkMode: true),
                SizedBox(height: padding),
                FacebookSignInButton(expanded: true, onPressed: () {}),
                SizedBox(height: padding),
                TwitterSignInButton(expanded: true, onPressed: () {}),
                SizedBox(height: padding),
                MicrosoftSignInButton(expanded: true, onPressed: () {}),
                MicrosoftSignInButton(expanded: true, onPressed: () {}, darkMode: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
