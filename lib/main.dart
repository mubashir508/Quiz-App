import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Pressed');
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
          title: Text("My Quiz App"),
        ),
        body: Column(
          children: [
            Text('Here is Question!!'),
            ElevatedButton(
              onPressed: () {
                answerQuestion();
              },
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion();
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion();
              },
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
