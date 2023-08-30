# Flutter Highlights (both legacy and modern lectures)

## Video Number Format Example

```text
Legacy Video: No. 12
Modern Video: No. 12M
```

```bash
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
- Everything's a Widgets
- Your app UI is a Widgets Tree

## No. 5

- Flutter does not use platform primitives
- Flutter control every pixel on the screen (iOS and Android UI wil be exactly same)

## No. 7

- install **Android SDK Command Line Tools** from Android Studio

```bash
flutter create first_project // project creation
flutter run // run from console
```

## No. 8

- install Dart and Flutter add-on in VS Code
- `flutter emulators --launch [Emulator ID]`
- learned how to run flutter project

## No. 17

```bash
flutter packages get // install dependencies
```

## No. 18

**pubspec.yaml** is like a package.json file used for configuration and depenedency.

## No. 21

- learned Dart basic
- `https://dartpad.dev/` use as online IDE

## No. 26

### Named Arguments

```dart
Person({@required String name, int age = 30}) {
...
}
Person(age: 30, name: 'Max') // calling with random order
```

- can call method/constructor without caring args order
- automatically optional
- can assign default value
- can force with `@required` to mark as not optional

```dart
Person({this.name, this.age}); // constructor shortcut (var names must be same with class vars)

// multi constructors
Person.veryOld(this.name) {
    age = 60;
}
```

## No. 27

- `@override` learned
- `void main() => runApp(MyApp());` method with one expression

## No. 28

- `Scaffold()` is a basic mobile layout scheme
- `appBar()` learned

## No. 30M

- learned about `LinearGradient`

## No. 33

- anonymous function learned

```dart
() => print("hello")
() {
//multi lines
}
```

## No. 36

- To convert stateless to stateful, place cursor on StatelessWidget class and press `ctrl + shift + R`.
- If you can't do that search `Refactoring` in key bindings.

## No.38

- using underscore (\_) make types, fields and functions private.

## No. 40

- `Container()` learned. (it's look like a `div`)

```dart
width: double.infinity,
margin: EdgeInsets.all(10),
textAlign: TextAlign.center,
```

## No. 43M

- To define argument to constructur you can use two way

```dart
final String greet;
const Hello(this.greet);

// or

final String greet;
const Hello(): greet = "Hello";
```

## No. 44

- `Colors.blue` is a predefined color.

## No. 47

- `final` is a runtime constant value. (We don't know what the final value will be while coding, the value is locked when it start running)
- `const` is a compile time constant value. (We know what the value will be stored)
- **Value Const** is a new thing in Dart

```dart
// locked both the variable and the value - can't change both.
const fruit = const ['apple'];

// only locked the variable - can change the value.
const fruit = ['apple'];

// only locked the value - can change the variable.
var fruit = const ['apple'];
```

## No. 50

- allow `null` on **Dart**

```dart
String? username = 'Max';
question['questionText']!
```

## No. 53

### Passing args method to widget

```dart
() => answerQuestion('Hello'); // use anonymous function to pass args
```

## No. 56M

- Don't use `Opactiy` widget. It drain performace. Use `Color.fromARGB()`.

## No. 64M

- In dart `if else` statement can be used in an array.

## No. 66

- `Ctrl + Shift + P` to open VS Code command
- Type `dart devtools`

## No. 72M

- Can clone a list by using `List.of(array)` method.
- Can shuffle a list by using `array.shuffle()` method.

## No. 75

- Date type in Dart is `DateTime`
- Need to use `toList()` method at the end of `map()` because `map()` return an iterable not a list.

## No. 75M

- You can easily add google fonts by installing `google_font` package.

## No. 82

### String Interpolation

```dart
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

```dart
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

- Can only use in `initState()` and `build()` methods. (**No. 182**)

```dart
widget.greeting('Hi'); // use 'widget' to access state from StatefulWidget
```

### Close Modal Sheet

- Use `Navigator.of(context).pop();` after form submitted.
- `pop()` remove the current screen.

## No. 96

### Custom Theme Setup

- `primarySwatch` generate a color scheme set. (light, dark variants)

```dart
return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
);
```

- can use by calling as bellow

```dart
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

## No. 105 (M)

- `context` variable is available to use inside the state class.

## No. 106

- `Flexible()` is like a flex box.
- `FittedBox()` is to change text size according to available space (shrink or grow)
- `Padding()` is to add some padding (simple version of container).

## No. 107

- Learned detail about `Flexible()` widget.
- `Expanded()` is same as `Flexible()` that contains `fit: FlexFit.tight` property. It will take the space that is base on the parent widget's size.

## No. 108

- `ListTile()` is look like `ion-item` from Ionic.

## No. 108 (M)

- You need to dispose `TextEditingController()` in `dispose()` lifecycle.

## No. 112

- Learned about Date picker `showDatePicker()`.
- `Future` is like a `Promise`.

## No. 114

- `removeWhere()` can remove an obj from list.

## No. 121

- Learned Responsive height.

```dart
MediaQuery.of(context).size.height * 0.6 // 60% of the screen

(MediaQuery.of(context).size.height - appBar.preferredSize.height) * 0.4 // 40% but excluded appBar height

MediaQuery.of(context).padding.top // get the height of phone's status bar
```

## No. 122

- Learned about responsive Text size base on user phone's font size setting.

## No. 122M

- Modern way to configure the themes

## No. 123

- `LayoutBuilder` gives constraints that applied to the surrounding container.

```dart
LayoutBuilder(builder: (ctx, constraints) { }

constraints.maxHeight * 0.6 // 60% height of the container
```

## No. 124

- To define which orientation mode allowed for the app, use following codes.

```dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}
```

## No. 125

- Learned about `Switch` widget (switch button).

## No. 126M

- Learned about adding dark mode

## No. 127

- You can use `if` inside of a list.
- **Warning** don't use curly braces in this case.

## No. 127M

- Learned about `for ... in` loop

## No. 128

- To get height of the virtual keyboard,

```dart
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

```dart
mainAxisSize: MainAxisSize.min // looks like width: min-content
```

## No. 133

- `SaveArea()` widget make sure to only render inside of the safe area.

## No. 133M

- Learned how to lock the device orientation.

## No. 134

- `CupertinoApp()` to use iOS theme.

## No. 134M

- Expanded widget constraints the child (i.e Chart) to only take as much width as available in the Row after sizing the other Row children.

## No. 135M

- Understanding widget size constraints.

## No. 136M

- From `viewInsets`, we can get overlapping space that is taken by other UI elements.

## No. 138M

- Use `LayoutBuilder` if you only care about the parent widget's given size (width and height).
- From `LayoutBuilder`, we can get avalible space that is given by parent widget.

## No. 141

- `WidgetTree, ElementTree and RenderTree` learned.
- `setState()` automatically call `build()` method to re-render widget.
- `MediaQuery` also calls `build()` method when size change. Should split small widgets and call inside them.

## No. 142

- When the parent `build()` is called, the children `build()` are also called.

## No. 144

### Const Constructor

- Class with only `final` variables can use `const` constructor.
- Always use _Const Constructor_ for all _StateLess Widget_.
- Always use `const` in front of the widget that parse constant value. For example

```dart
const Text('Hello)
```

- This prevent unnecessary widget **rebuild**.

## No. 147M

- Setting key with `ValueKey()` or `ObjectKey()`
- `ValueKey()` is the recommended way

## No. 148M

- `var` vs `final` vs `const`

## No. 148

### Stateful Widget Lifecycle

| Lifecycle         | Description                        |
| ----------------- | ---------------------------------- |
| initState()       | only once when widget is created   |
| build()           | -                                  |
| setState()        | -                                  |
| didUpdateWidget() | every time state is change         |
| build()           | -                                  |
| dispose()         | only once when widget is destroyed |

## No. 150

### App Lifecycle

| Lifecycle State Name | When is it hit?                                     |
| -------------------- | --------------------------------------------------- |
| inactive             | App is inactive, no user input received             |
| paused               | App is no visible to user, running in background    |
| resume               | App is (again) visible and responding to user input |
| suspending           | App is about to be suspended (exited)               |

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
- Flutter only find match widgets by checking its type. By defining unique key for each widget, Flutter now distinguish with id + type.

## No. 154

- `Key` is only need to add in the top level widget.
- Use `ValueKey(tx.id)` to parse id.
- Need to parse key to parent widget by calling `super()` method.

## No. 159

- Learned `GridView` widget.
- `SliverGridDelegateWithMaxCrossAxisExtent` define size for each grid item.

## No. 160

- Learned `LinerGradient()` and `BorderRadius()`.

## No. 163

- Learned `InkWell()`.
- Learned `Navigator`.
- `Navigator` use `push()` and `pop()` to change between pages. (It works like a stack)

## No. 165

- Learned `routes`, `pushNamed()`, `ModalRoute`
- `ModalRoute` can be use in `didChangeDependencies()` life cycle.
- `didChangeDependencies` run everytime when widget change.
- `ModalRoute` used to extract value from route (More in No. 233).

## No. 166

- Learned `initialRoute`.

## No. 169

- Learned `ClipRRect()`.
- This can be use to crop an image which is inside of the rounded corner widget.
- Learned `Image.network()`.

## No. 170

- Learned `Positioned()`.
- Can be use inside `Stack()` widget.

## No. 172

- `onGenerateRoute` run if there is no registered route found).
- `MaterialPageRoute()` can build a route on the fly.
- `onUnknownRoute` run if other route systems failed.

## No. 173

- `firstWhere()` can pick one element from an array (only pick first found!).

## No. 173M

- `Driver()` widget can use to draw horizontal line.

## No. 174

- Learned `DefaultTabController()` to add a top tab bar.

## No. 175

- Learned `BottomNavigationBar()` to add a bottom tab bar.

## No. 176

- Learned `Drawer()` to add a menu.

## No. 178

- Use `pushReplacementNamed()` in `Drawer` to avoid too many page stack.
- Can be use when don't want to go back to previous page.

## No. 179

- `pop()` remove the current page.
- `popAndPushNamed()` remove current page and add new page.

### Can't use Route in initState()

- Use `didChangeDependencies()` instead.
- This hook run whenever the dependencies of the state change.

## No. 182

- `indexWhere()` can use to find the first index in the list that satisfies the provided.
- `any()` can return true/false by checking whether any element of this iterable satisfies.

## No. 189

- Learned `GridTile` widget.
- Learned `GridTileBar` widget.

## No. 194

- Learned `Provider` package. Use `create` instead of `builder`.
- `with` is an inheritance lite. The class only get methods and properties. Not become a sub-class of the parent class.
- Use `ChangeNotifier` to create a provider
- Use `ChangeNotifierProvider` to setup the provider.
- Use `notifyListeners()` to emit data changes.

## No. 195

- Learned `mixin`.
- Mixins is all about how a class does what it does, it's inheriting and sharing concrete implementation. Interfaces is all about what a class is, it is the abstract signature and promises that the class must satisfy. It's a type.

## No. 197

- Use `listen: false` in `Provider` to not rebuild when data is changed.

## No. 199

- Use `create()` if you are creating new instance of widget.
- Use `ChangeNotifierProvider.value()` if you reuse the existing widget.
- `ChangeNotifierProvider` can automatically unsubscribe data.

## No. 200

- Can use `Consumer()` instead of `Provider.of()`.
- Use `child` prop for a widget that don't need to rebuild.

## No. 201

- Learned `PopupMenuButton()` widget.

## No. 202

- Learned `putIfAbsent()`, `update()`. Used for Map.

## No. 203

- `MultiProvider()` can used to add multi providers for widgets.

## No. 204

- Used `child` prop of `Consumer()`.

## No. 205

- Learned `Chip()` widget.
- Use `Spacer()` widget to take available white space.

## No. 206

- `show` keyword in import makes to only import selected things.

## No. 207

- `Dismissible()` widget can use to make swipe-able item.

## No. 212

- `automaticallyImplyLeading` can be set to `false` to hide back button.

## No. 213

- `min()` method return less value.

## No. 217

- Learned `SnackBar()` widget.

## No. 219

- Learned `showDialog()` widget.

## No. 220

- Learned `NetworkImage()` object.

## No. 222

- Learned `Form()` widget.
- Use `TextFormField()` to connect with `Form()`.

## No. 223

- `ListView` vs `Column` for form.

## No. 225

- Learned about form controls. (Include `FocusNode()`).

## No. 228

- `Form()` widget need to provide `GlobalKey()`.
- `Form()` is a stateful widget.

## No. 229

- If `validator` return `null`, the input is valid no error.

## No. 230

- `double.tryParse(value)` can use to check `value` is a valid number. Return `null` if `value` is invalid.
- `startsWith()` and `endsWith()` can be use for String value.

## No. 248

- `async` automatically warp all code with `Future`
- And automatically return `Future`

## No. 256

- In firebase, only `GET` and `POST` requests throw errors.
- For `PATCH` `PUT` `DELETE` it doesn’t throw errors. (only response status code like `403`)

## No. 259

- Can use `FutureBuilder` to load data from server.

## No. 265

- `..` can use to make previous method return instead of current one.

```dart
/**
* rotationZ() will return instead of translate()
*/
transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0)
```

## No. 269

- You can filter exception using this

```dart
try {
  ...
} on HttpException catch (error) {
} catch (error) {}
```

## No. 271

- `ChangeNotifierProxyProvider` can used to get value from other providers
- make sure the required provider must declared before the `ChangeNotifierProxyProvider`.

## No. 274

- Optional positional arguments can be written as follow.

```dart
fetchAndSetProducts(String name, [bool filterByUser = false]) {}
```
