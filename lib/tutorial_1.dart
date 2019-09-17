import 'package:flutter/material.dart';
import 'package:page_route_example/center_column.dart';

class Tutorial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial 1"),
      ),
      body: CenterColumn(
        children: <Widget>[
          FlatButton(
            color: Colors.grey,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageOne(),
              ),
            ),
            child: Text("Page One"),
          ),
          FlatButton(
            color: Colors.grey,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageTwo(),
              ),
            ),
            child: Text("Page Two"),
          ),
          FlatButton(
            color: Colors.grey,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageThree(),
              ),
            ),
            child: Text("Page Three"),
          ),
          FlatButton(
            color: Colors.grey,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageFour(),
              ),
            ),
            child: Text("Page Four"),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("I am page one."),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("I am page two."),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CenterColumn(
        children: <Widget>[
          Text("I am page three."),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CenterColumn(
        children: <Widget>[
          Text("I am page four."),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
