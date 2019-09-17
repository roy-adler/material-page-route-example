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
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial One"),
      ),
      body: CenterColumn(
        children: <Widget>[
          Text("I am Tutorial 1."),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}

class Tutorial2 extends StatelessWidget {
  Navigator _getNavigator(BuildContext context) {
    return new Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return new MaterialPageRoute(builder: (context) {
          return new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(settings.name),
                new FlatButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "${settings.name}/next"),
                  child: new Text('Next'),
                ),
                new FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: new Text('Back'),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Tutorial Two"),
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: _getNavigator(context),
          ),
          Divider(),
          new Expanded(
            child: _getNavigator(context),
          ),
        ],
      ),
    );
  }
}
