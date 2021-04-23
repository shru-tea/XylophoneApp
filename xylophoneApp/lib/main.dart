import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('assets_note$number.wav');
  }

  //Color is also a datatype and because we need to get an expanded widget,we are keeping that as return type
  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.teal.shade800, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple.shade900, number: 7)
            ],
          ),
        ),
      ),
    );
  }
}

//Arror functions
//
//
//int add(){
// return 5+2
//}
//      | equivalent
//      V
//int add()=>5 + 2
//
//int add(int n1,int n2) => n1+n2;
