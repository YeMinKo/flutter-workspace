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
### Named Arguments

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

## No.38
- using underscore (_) make types, fields and functions private.

## No. 40
- `Container()` learned. (it's look like a `div`)
```
width: double.infinity,
margin: EdgeInsets.all(10),
textAlign: TextAlign.center,
```

## No. 44
- `Colors.blue` is a predefined color.

## No. 47
- `final` is a runtime constant value. (We don't know what the final value will be while coding, the value is locked when it start running)
- `const` is a compile time constant value. (We know what the value will be stored)
- **Value Const** is a new thing in Dart
```
// locked both the variable and the value - can't change both.
const fruit = const ['apple']; 

// only locked the variable - can change the value.
const fruit = ['apple'];

// only locked the value - can change the variable.
var fruit = const ['apple'];
```

## No. 50
- allow `null` on **Dart**
```
String? username = 'Max';
question['questionText']! 
```

## No. 53
### Passing args method to widget
```
() => answerQuestion('Hello'); // use anonymous function to pass args
```

## No. 66
- `Ctrl + Shift + P` to open VS Code command
- Type `dart devtools` 

## No. 75
- Date type in Dart is `DateTime` 
- Need to use `toList()` method at the end of `map()` because `map()` return an iterable not a list.

## No. 82
### String Interpolation
```
'Hello $name' // for primitive values
'Hello ${person.name}' // for obj properties
```

## No. 90
- Rows and Columns can't scroll by default.
- Wrap with `SingleChildSrollView()` widget to get scrolling function.

## No. 91
### ListView
- `ListView` can scroll by default. Can be use as scrollable row or column.
- `ListView(children: [])` is basically same as `SingleChildScrollView()` 
- `ListView.builder()` is lazy loading scroll list.
```
ListView.builder(
	itemCount: fruits.length, // total count to render
	itemBuilder: (ctx, index) { // called by flutter for lazy loading
		return Card(); 
	}		
)
```

## No. 92
- `onSubmitted: (_) => myMethod,` // can use `_` to take arg that doesn't care.
- `amount.toStringAsFixed(2)` for shorten decimal number.

## No. 95
- State will loss when UI re-render in Stateless Widget.
- Need to convert to Stateful if we need to kept state.

### Access properties and methods from StatefulWidget in State Class
```
widget.greeting('Hi'); // use 'widget' to access state from StatefulWidget
```

### Close Modal Sheet
- Use `Navigator.of(context).pop();` after form submitted.

## No. 96
### Custom Theme Setup
-  `primarySwatch` generate a color scheme set. (light, dark variants)
```
return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
);
```

- can use by calling as bellow
```
Theme.of(context).primaryColor
Theme.of(context).primaryColorDark // dark variant
```

## No. 97 & 98
- custom font setup

## No. 99
- add an image (don't forget to add image path in yaml file)
- `SizedBox()` is a container that can be use without child widget. In commons, that widget is used as divider widget.

## No. 101
- getter method
- for loop
- date methods

## No. 103
- `where()` is like a `filter()` from JS.
- need to call `toList()` because the return type of `where()` is iterable.

## No. 104
- `Stack()` widget is to overlap widgets.

## No. 105
`fold()` is like a `reduce()` from JS.

## No. 106
- `Flexible()` is like a flex box.
- `FittedBox()` is to change text size according to available space (shrink or grow)
- `Padding()` is to add some padding (simple version of container).

## No. 107
- Learned detail about `Flexible()` widget.
- `Expanded()` is same as `Flexible()` that contains `fit: FlexFit.tight` property. It will take as much free space as it can get.

## No. 108
- `ListTile()` is look like `ion-item` from Ionic.

## No. 112
- Learned about Date picker `showDatePicker()`.
- `Future` is like a `Promise`.

## No. 114
- `removeWhere()` can remove an obj from list.

## No. 121
- Learned Responsive height.
```
MediaQuery.of(context).size.height * 0.6 // 60% of the screen

(MediaQuery.of(context).size.height - appBar.preferredSize.height) * 0.4 // 40% but excluded appBar height

MediaQuery.of(context).padding.top // get the height of phone's status bar
```

## No. 122
- Learned about responsive Text size base on user phone's font size setting.

## No. 123
- `LayoutBuilder` gives constraints that applied to the surrounding container.
```
LayoutBuilder(builder: (ctx, constraints) { } 

constraints.maxHeight * 0.6 // 60% height of the container
```

## No. 124
- To define which orientation mode allowed for the app, use following codes.
```
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}
```

## No. 125
- Learned about `Switch` widget (switch button). 

## No. 127
- You can use `if` inside of a list.
- **Warning** don't use curly braces in this case.

## No. 128
- To get height of the virtual keyboard, 
```
MediaQuery.of(context).viewInsets.bottom
```
- Use together with `SingleChildScrollView` to get scrollable widget.
- Has a link that include improved **ModelBottomSheet**.

## No. 131
- Adaptive UI for iOS.
- `Switch.adaptive()` can show adaptive UI for android and ios.
- Platform check with `Platform.isIOS`

## No. 132
- Learned about `CupertinoNavigationBar()`, `CupertinoIcons`, `CupertinoPageScaffold()`.
- Use `GestureDector()` for custom icon.
- To reduce size of `Row()` use following.
```
mainAxisSize: MainAxisSize.min // looks like width: min-content
```

## No. 133
- `SaveArea()` widget make sure to only render inside of the safe area.

## No. 134
- `CupertinoApp()` to use iOS theme.

## No. 141
- `WidgetTree, ElementTree and RendereTree` learned.
- `setState()` automatically call `build()` method to re-render widget.
- `MediaQuery` also calls `build()` method when size change. Should split small widgets and call inside them.

## No. 142
- When the parent `build()` is called, the children `build()` are also called.

## No. 144
### Const Constructor

- Class with only `final` variables can use `const` constructor.
- Always use _Const Constructor_ for all _StateLess Widget_.
- Always use `const` in front of the widget that parse constant value. For example
```
const Text('Hello)
```
- This prevent unnecessary widget **rebuild**.

## No. 148
### Stateful Widget Lifecycle 
| Lifecycle | Description | 
| --------- | ----------- |
| initState() | only once when widget is created | 
| build() | - |
| setState() | - |
| didUpdateWidget() | every time state is change | 
| build() | - |
| dispose() | only once when widget is destroyed | 

## No. 150
### App Lifecycle
| Lifecycle State Name | When is it hit? | 
|----------------------|-----------------|
| inactive | App is inactive, no user input received |
| paused | App is no visible to user, running in background | 
| resume | App is (again) visible and responding to user input |
| suspending | App is about to be suspended (exited) |

### Mixin
- Mixin is simlier to inheritance but not becoming a subclass. 
- Just mix methods and properties from other class.
- Use with `width` keyword on class.
- Learned App Lifecycle states using `didChangeAppLifecycleState()`.

## No. 151
- `Context` contains meta information of widget and its location in the widget tree.

## No. 153
- Learned problem about Stateful widget.
- Learned why `Key` is need in Stateful widget.