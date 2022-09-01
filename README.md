# Flutter Highlights

```
emulator -list-avds (show all emulators)
emulator @Pixel_5_API_31D (open emulator)
emulator @Pixel_5_API_31 -logcat i (open emulator with logs)
```

## No. 2
- Flutter has Flutter Framework and Flutter SDK
- Flutter Framework is a set of features to help developing app.
- Flutter SDK is to convert Dart codes to native code.

## No. 4
- UI as Code: write all things(UI + logic) in code.
-  Everything's a Widgets
-  Your app UI is a Widgets Tree

## No. 5
- Flutter does not use platform primitives 
- Flutter control every pixel on the screen (iOS and Android UI wil be exactly same)

## No. 7
- install **Android SDK Command Line Tools** from Android Studio
```
flutter run // run from console
```

## No. 8
- install Dart and Flutter add-on in VS Code
- `flutter emulators --launch [Emulator ID]`
- learned how to run flutter project

## No. 17
```
flutter packages get // install dependencies
```

## No. 18
**pubspec.yaml** is like a package.json file used for configuration and depenedency.

## No. 21
- learned Dart basic
- `https://dartpad.dev/` use as online IDE

## No. 26
**Named Arguments**

```
Person({@required String name, int age = 30}) {
...
}
Person(age: 30, name: 'Max') // calling with random order
```
- can call method/constructor without caring args order
- automatically optional
- can assign default value
- can force with `@required` to mark as not optional

```
Person({this.name, this.age}); // constructor shortcut (var names must be same with class vars)

// multi constructors
Person.veryOld(this.name) {
    age = 60;
}
```

## No. 27
- `@override` learned
- ` void main() => runApp(MyApp());` method with one expression

## No. 28
- `Scaffold()` is a basic mobile layout scheme
- `appBar()` learned

## No. 33
- anonymous function learned
```
() => print("hello")
() {
//multi lines
}
```

## No. 36
- To convert stateless to stateful, place cursor on StatelessWidget class and press `ctrl + shift + R`.
- If you can't do that search `Refactoring` in key bindings.

## No. 40
- `Container()` learned. (it's look like a `div`)
```
width: double.infinity,
margin: EdgeInsets.all(10),
textAlign: TextAlign.center,
```
