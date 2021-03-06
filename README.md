# Flutter State Management

Let's press a button and change the border color of a box.

![overview](docs/images/overview.gif)

In some programming languages, you change the color like this:

```
boxColor = newColor
```

In Flutter, to interactively change information such as color, 
pictures, or text on a Flutter screen, you must manage the state.
There are many ways to handle state in Flutter.

The easiest way to manage state is with a stateful widget. You change information, such as color, with a `setState()`.

```dart
setState() {
    boxColor = newColor;
}
```

Although it is easy to set the state with a single `setState()` command, the problem is that you can't 
set the state of one widget from another widget.  For example, if a button exists on screen 1, you can't use
this technique to set the color of screen 2.

You also can't extract the button into a separate class and set the color of a box that exists in another class.
The basic `setState()` technique only works when the widgets are in the widget state, the same file and the same class.
For example, if you have a simple application,
you can put all the buttons inside of the same file, inside the same class.  If all the buttons are in the same
class that a colored box is in, you can directly control the colored box from the button.


## Challenge #1 - Manage state in a single stateful widget

![challenge 1](docs/images/challenge_1_single_widget.gif)

Place both buttons and the colored box in the same class, in the same file.

Use `setState()` in the `onPressed(){}` section of each button.  



## Challenge #2 - Pass Function For State Management 

![challenge 2](docs/images/challenge_2_pass_function.gif)


Adjust the state of a widget from another widget that is in a separate file.

If the button widget is in the same file as the outline box, you can easily use `setState()` to
change the color of the widget.  However, if the widget is in a different file, you must pass 
the state from one widget to another.  There are many ways to pass the state between widgets.


For this challenge create a function in `main.dart` under the `state` section of a stateful widget that
sets the state.  For example, you can call the function, `changeColor`.  The function will then use
setState to change the color.

### Structure

There are two files.

1. color_button.dart
2. main.dart

* Create a raised button template in color_button.dart as a stateless widget
* main.dart contains a stateful widget
* Call the widget from inside main.dart and place in a row

in `main.dart`, the button is called like this:

```dart
ColorButton(
    boxColor: Colors.red,
    colorName: 'red',
    changeColor: changeColor),
```

## InheritedWidget and Provider Package

When you build more complex apps, it becomes difficult to 
keep track of changes with `setState`. 

To access data in a widget tree, Flutter provides an [InheritedWidget](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html).
This is the third type of basic widget after StatelessWidget and StatefulWidget.

The InheritedWidget can be difficult to use.  Most people use the Provider package that wraps an easier set of commands around the InheritedWidget.

There are four concepts for the Provider package.

1. ChangeNotifier
2. ChangeNotifierProvider
3. Consumer
4. read and set

The main concept for Provider is that a notification is sent out when information changes.
Different sections of the app can listen for notifications.

If a section such as a colored box receives a notification that the color changed, it will rebuild the colored box and the new color will be displayed. You can decide which parts of your app listen for changes.

To use Provider, you need to implement these four steps: provide, notify, consume, set.

1. Provide
  * ChangeNotiferProvider
```dart
    create: (context) => NameModel(),
        child: MainApp()
```
2. Notify
  * NameModel
  * extends ChangeNotifier
3. Consume
  * `Consumer<NameModel>`
  * `builder: (context, model, child) => WidgetToDisplayStuff()`
4. Set
  * `context.read<NameModel>().setterName()`

### Exercise

Repeat this exercise until you can use Provider easily and understand the concepts.

https://github.com/codetricity/flutter_provider_exercise