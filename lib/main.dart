import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void answerQuestion1() {
    setState(() {
      qIndex += 1;
    });

    print('Red Chosen');
    print(qIndex);
    if (qIndex > 1) {
      qIndex = 0;
    }
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
          title: Text("Kil Kil App"),
        ),
        body: Column(
          children: [
            Text(questions[qIndex]),
            ElevatedButton(
              onPressed: answerQuestion1,
              child: Text("Red"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Blue Chosen");
              },
              child: Text("Blue"),
            ),
            ElevatedButton(
              onPressed: () => print("Green Chosen"),
              child: Text("Green"),
            ),
          ],
        ),
      ),
    );
  }
}
