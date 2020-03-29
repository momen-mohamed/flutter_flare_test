import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  int _counter = 0;

  var paused = true;

  void click() {
    setState(() {
      paused = !paused;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: FlareActor(
            'assets/success2.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: 'Untitled',
            isPaused: paused,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: click,
        tooltip: 'Increment',
        child: paused ? Icon(Icons.play_arrow) : Icon(Icons.pause),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
