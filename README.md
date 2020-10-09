# Flutter Auth Buttons

[![Build Status](https://travis-ci.org/dmjones/flutter_auth_buttons.svg?branch=master)](https://travis-ci.org/dmjones/flutter_auth_buttons)

---

> ## This library is now in maintenance mode
>
> I'm no longer actively using Flutter and don't have the time to keep this library maintained. No further changes will be made.
>
> You are very welcome to fork and maintain this elsewhere. If you do that, please let me know and I can point people there.
>
> Otherwise, there are some other libraries ([such as this one](https://github.com/ZaynJarvis/Flutter-Sign-in-Button)) which seem more advanced and could be a good choice.

---

Flutter widget library containing buttons for authenticating with popular social networks: Apple, Google, Facebook, Twitter
and Microsoft.

<img src="https://raw.githubusercontent.com/dmjones/flutter_auth_buttons/master/screenshots/example-app.png" alt="Screenshot" width="250" />

## Usage

Add `flutter_auth_buttons` to your `pubspec.yaml`, then import the Dart file:

```dart
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
```

Use the `onPressed` attribute to capture the button press and call your authentication logic within that. To disable
the button, pass `null` or omit the attribute.

```dart
FacebookSignInButton(onPressed: () {
  // call authentication logic
});
```

Some buttons have a dark mode. Enable this with the optional parameter:

```dart
GoogleSignInButton(
  onPressed: () {/* ... */}, 
  darkMode: true, // default: false
)
```

You can adjust the border-radius of the buttons:

```dart
TwitterSignInButton(
  onPressed: () {},
  borderRadius: 10.0,
)
```

You can adjust the text style of the buttons:

```dart
TwitterSignInButton(
  onPressed: () {},
  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
)
```

You can adjust the splash color of the buttons:

```dart
GoogleSignInButton(
  onPressed: () {/* ... */}, 
  splashColor: Colors.white, 
  // setting splashColor to Colors.transparent will remove button ripple effect.
)
```

Buttons can be stretched like normal Material buttons. By default the button
contents are left-aligned when stretched. You can choose to center the icon and
text using the `centered` property.

```dart
TwitterSignInButton(
  onPressed: () {},
  centered: true,
)
```

See the documentation for API details: https://pub.dartlang.org/documentation/flutter_auth_buttons/latest/.

## Contributions

Contributions are very welcome. I would recommend discussing large changes in an issue before you spend the time on them.

Good quality pull requests will win you commit rights.
