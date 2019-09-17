import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("I am page four.")),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
