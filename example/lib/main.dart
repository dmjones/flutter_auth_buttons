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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GoogleSignInButton(onPressed: () {}),
                GoogleSignInButton(onPressed: () {}, darkMode: true),
                FacebookSignInButton(onPressed: () {}),
                TwitterSignInButton(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
