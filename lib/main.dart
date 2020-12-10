import 'package:flutter/material.dart';
import 'color_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.orange[500],
          accentColor: Colors.lightGreen[700]),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color boxColor = Colors.black;

  void changeColor(Color color) {
    setState(() {
      boxColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Colored Box',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: boxColor, width: 3),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    boxColor: Colors.red,
                    colorName: 'red',
                    changeColor: changeColor),
                ColorButton(
                    boxColor: Colors.blue,
                    colorName: 'blue',
                    changeColor: changeColor),
                ColorButton(
                    boxColor: Colors.green,
                    colorName: 'green',
                    changeColor: changeColor),
                ColorButton(
                    boxColor: Colors.teal,
                    colorName: 'teal',
                    changeColor: changeColor),
                ColorButton(
                    boxColor: Colors.black,
                    colorName: 'black',
                    changeColor: changeColor),
                ColorButton(
                    boxColor: Colors.purple,
                    colorName: 'purple',
                    changeColor: changeColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
