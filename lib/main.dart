import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int waveNumb) {
    // May be used like that:
    // AudioCache().play('note$waveNumb.wav');

    // At the package page the code is like that:
    final player = AudioCache();
    player.play('note$waveNumb.wav');
  }

  // Function to create multible widgets with different data
  // Note: (( Color btnColor )) this keyword 'Color' can be used as a variable to define its value data type and its data type is color
  Expanded buildButton({Color btnColor, int btnWave, String btnTxt}) {
    return Expanded(
      child: FlatButton(
        color: btnColor,
        onPressed: () {
          playSound(btnWave);
        },
        child: Text(btnTxt),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App Test'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildButton(
                btnColor: Colors.red[200], btnWave: 1, btnTxt: 'Wave 1'),
            buildButton(
                btnColor: Colors.red[300], btnWave: 2, btnTxt: 'Wave 2'),
            buildButton(
                btnColor: Colors.red[400], btnWave: 3, btnTxt: 'Wave 3'),
            buildButton(
                btnColor: Colors.red[500], btnWave: 4, btnTxt: 'Wave 4'),
            buildButton(
                btnColor: Colors.red[600], btnWave: 5, btnTxt: 'Wave 5'),
            buildButton(
                btnColor: Colors.red[700], btnWave: 6, btnTxt: 'Wave 6'),
            buildButton(
                btnColor: Colors.red[800], btnWave: 7, btnTxt: 'Wave 7'),
          ],
        ),
      ),
    );
  }
}
