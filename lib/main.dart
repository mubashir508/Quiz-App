import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var qIndex = 0;

  void answerQuestion1() {
    qIndex += 1;
    print('Answer 1 Chosen');
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s you favourite colour?',
      'What\'s your favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              onPressed: answerQuestion1,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer 2 Chosen");
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 3 Chosen"),
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
