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
        appBar: AppBar(
          title: Text("flutter_auth_buttons"),
        ),
        backgroundColor: Color.fromARGB(0xFF, 0xF0, 0xF0, 0xF0),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Heading("Natural size"),
              Column(
                children: <Widget>[
                  AppleSignInButton(onPressed: () {}),
                  AppleSignInButton(onPressed: () {}, darkMode: true),
                  GoogleSignInButton(onPressed: () {}),
                  GoogleSignInButton(onPressed: () {}, darkMode: true),
                  FacebookSignInButton(onPressed: () {}),
                  TwitterSignInButton(onPressed: () {}),
                  MicrosoftSignInButton(onPressed: () {}),
                  MicrosoftSignInButton(onPressed: () {}, darkMode: true),
                ],
              ),
              SizedBox(height: 25.0),
              Heading("Stretched (by parent)"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AppleSignInButton(onPressed: () {}),
                    AppleSignInButton(onPressed: () {}, darkMode: true),
                    GoogleSignInButton(onPressed: () {}),
                    GoogleSignInButton(onPressed: () {}, darkMode: true),
                    FacebookSignInButton(onPressed: () {}),
                    TwitterSignInButton(onPressed: () {}),
                    MicrosoftSignInButton(onPressed: () {}),
                    MicrosoftSignInButton(onPressed: () {}, darkMode: true),
                  ],
                ),
              ),
            ],
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
