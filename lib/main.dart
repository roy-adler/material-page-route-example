import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_route_example/center_column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CenterColumn(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tutorial1()),
              );
            },
            child: Container(
              child: Text("Tutorial One"),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tutorial2()),
              );
            },
            child: Container(
              child: Text("Tutorial Two"),
            ),
          ),
        ],
      ),
    );
  }
}

class Tutorial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Tutorial2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      return Scaffold();
    }
  }
}
