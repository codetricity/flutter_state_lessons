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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('red'),
                    color: Colors.red,
                    onPressed: () {
                      changeColor(Colors.red);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: RaisedButton(
                    child: Text('black'),
                    color: Colors.black,
                    onPressed: () {
                      changeColor(Colors.black);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
