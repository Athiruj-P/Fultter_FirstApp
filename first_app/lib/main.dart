import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      "What's your fav color?",
      "What's your fav animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text("Question!"),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
