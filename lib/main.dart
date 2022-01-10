import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    AudioCache()..play('note$soundNumber.wav');
  }

  Expanded xyloKeys(
      {required Color colore,
      required int soundNumber,
      required Text textName}
      ) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: textName,
        style: ElevatedButton.styleFrom(primary: colore),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xyloKeys(
                  colore: Colors.red,
                  soundNumber: 1,
                  textName: Text('Doh'),
                ),
                xyloKeys(
                  colore: Colors.orange,
                  soundNumber: 2,
                  textName: Text('Reh'),
                ),
                xyloKeys(
                  colore: Colors.yellow,
                  soundNumber: 3,
                  textName: Text('Mee'),
                ),
                xyloKeys(
                  colore: Colors.green,
                  soundNumber: 4,
                  textName: Text('Fah'),
                ),
                xyloKeys(
                  colore: Colors.teal,
                  soundNumber: 5,
                  textName: Text('Soh'),
                ),
                xyloKeys(
                  colore: Colors.blue,
                  soundNumber: 6,
                  textName: Text('Lah'),
                ),
                xyloKeys(
                  colore: Colors.purple,
                  soundNumber: 7,
                  textName: Text('Tee'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
