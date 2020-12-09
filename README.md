# Flutter State Management

To interactively change information such as color, pictures, or text on a Flutter screen, you must manage the state of the
Flutter screen.  There are many ways to handle state in Flutter.

The easiest way to manage state is with a stateful widget and to change information, such as color, with a `setState()`.  
This technique only works when the widgets are in the widget state.  For example, if you have a simple application,
you can put all the buttons inside of the same file, inside the same class.  If all the buttons are in the same
class that a colored box is in, you can directly control the colored box from the button.

![box 1](docs/images/box_1.gif)

## Challenge #1 - Manage state in a single stateful widget

Use `setState()` in the `onPressed(){}` section of each button.  
The app is in a single file.


## Challenge #2 - Pass Function For State Management 

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

