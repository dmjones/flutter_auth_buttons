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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: padding),
                  AppleSignInButton(onPressed: () {}),
                  AppleSignInButton(
                      onPressed: () {}, style: AppleButtonStyle.whiteOutline),
                  AppleSignInButton(
                      onPressed: () {}, style: AppleButtonStyle.black),
                  SizedBox(height: padding),
                  GoogleSignInButton(onPressed: () {}),
                  GoogleSignInButton(onPressed: () {}, darkMode: true),
                  SizedBox(height: padding),
                  FacebookSignInButton(onPressed: () {}),
                  SizedBox(height: padding),
                  TwitterSignInButton(onPressed: () {}),
                  SizedBox(height: padding),
                  MicrosoftSignInButton(onPressed: () {}),
                  MicrosoftSignInButton(onPressed: () {}, darkMode: true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
