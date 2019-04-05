# Flutter Auth Buttons

Flutter widget library containing buttons for authenticating with popular social networks.

<img src="https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/example-app.png" alt="Screenshot" width="300" />

These buttons do not contain authentication logic. They are designed to be used with authentication packages, 
such as [firebase_auth](https://pub.dartlang.org/packages/firebase_auth). Use the `onPressed` attribute to
capture the button press and call your authentication logic within that.

```dart
GoogleSignInButton(onPressed: () {
  // call authentication logic
});
```

## Usage

Add `flutter_auth_buttons` to your `pubspec.yaml`, then import the Dart file:

```dart
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
```

See the documentation for API details: https://pub.dartlang.org/documentation/flutter_auth_buttons/latest/.
