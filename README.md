# Flutter Auth Buttons

Flutter widget library containing buttons for authenticating with popular social networks.

These buttons do not contain authentication logic. They are designed to be used with authentication packages, 
such as [firebase_auth](https://pub.dartlang.org/packages/firebase_auth). Use the `onPressed` attribute to
capture the button press and call your authentication logic within that.

```dart
GoogleSignInButton(onPressed: () {
  // call authentication logic
});
```

## Supported buttons

Screenshots of the supported buttons are shown below.

### Google

Google suggests two default button styles on it's 
[branding page](https://developers.google.com/identity/branding-guidelines).

Light button:

![Google light button screenshot](https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/google-light.png)


Dark button:

![Google dark button screenshot](https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/google-dark.png)

### Facebook

Facebook has fewer guidelines for designing their buttons (see 
[here](https://developers.facebook.com/docs/facebook-login/userexperience#buttondesign)). This button was designed to
match the example given in their documentation.

![Facebook button screenshot](https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/facebook.png)


## Usage

Add `flutter_auth_buttons` to your `pubspec.yaml`, then import the Dart file:

```dart
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
```

See the documentation for API details.


