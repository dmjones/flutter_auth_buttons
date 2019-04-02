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

### Github

Github doesn't appear to provide a button guidlines (see 
[here](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#non-web-application-flow)).
This button was designed to match the colours and style used in their example images.

Light button:
![Github button screenshot](https://user-images.githubusercontent.com/32497443/55409742-93ebb500-5530-11e9-9287-73ccdda9ce32.png)
Dark button:
![githubDark](https://user-images.githubusercontent.com/32497443/55412826-1f1b7980-5536-11e9-8061-2cd124df870c.png)

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

### Instagram

Instgram doesn't have a precise button as well (see 
[here](https://www.instagram.com/developer/authentication/)).
This button was designed to match the colours and style used in their example images.

Light Button:

![Instagram button screenshot](https://user-images.githubusercontent.com/32497443/55409750-98b06900-5530-11e9-8b38-4e811a347cfc.png)

Dark Button:

![Instagram button screenshot](https://user-images.githubusercontent.com/32497443/55412835-23479700-5536-11e9-8aa2-580e27a6076d.png)

### Twitter

Like Facebook, Twitter doesn't prescribe a precise button (see 
[here](https://developer.twitter.com/en/docs/twitter-for-websites/log-in-with-twitter/guides/sign-in-with-twitter-resources)).
This button was designed to match the colours and style used in their example images.

![Twitter button screenshot](https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/twitter.png)


## Usage

Add `flutter_auth_buttons` to your `pubspec.yaml`, then import the Dart file:

```dart
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
```

See the documentation for API details.