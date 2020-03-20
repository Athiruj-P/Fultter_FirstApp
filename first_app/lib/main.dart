import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;

  void answerQuestion() {
    setState(() {
      // เป็นฟังชันที่บังคับให้ flutter render ui ใหม่
      //เพื่อบอกให้ MyApp รู้ว่าถ้าสิ่งนี้เปลี่ยน ให้ render ใหม่
      questionsIndex += 1;
    });
    print(questionsIndex);
  }

  @override
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
            Text(
              questions[questionsIndex],
            ),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () => print("Ans 2 chosen"),
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: () {
                print("Ans 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
