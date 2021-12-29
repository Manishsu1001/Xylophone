import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded it(int pressed, Color color){
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              playsound(pressed);
            },
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(color),
            ),
            child: Text(''),),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Sakshi',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Some',
              ),
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              it(1,Colors.red),
              it(2,Colors.orange),
              it(3,Colors.yellow),
              it(4,Colors.green),
              it(5,Colors.blue),
              it(6,Colors.indigo),
              it(7,Colors.purple),

            ],
          ),
      ),
    );
  }
}
