import 'package:flutter/material.dart';

class Tutorial2 extends StatelessWidget {
  _getNavigator(String s) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("NavigatorOne"),
            ),
            body: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: Text(s),
                            ),
                          )),
                );
              },
              child: Container(
                child: Text(s),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial 2"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _getNavigator("Test1"),
          ),
          Divider(),
          Expanded(
            child: _getNavigator("Test2"),
          ),
        ],
      ),
    );
  }
}
