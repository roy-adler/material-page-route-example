import 'package:flutter/material.dart';
import 'package:page_route_example/center_column.dart';

class Tutorial1 extends StatelessWidget {
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
