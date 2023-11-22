import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

void playSound(int note) {
  final player = AudioPlayer();
  player.play(AssetSource('note$note.wav'));
}

Expanded buildWidget(int noteNum, colo) {
  return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: colo),
          onPressed: () {
            playSound(noteNum);
          },
          child: Text('')));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildWidget(1, Colors.red),
                    buildWidget(2, Colors.orange),
                    buildWidget(3, Colors.yellow),
                    buildWidget(4, Colors.green),
                    buildWidget(5, Colors.green[300]),
                    buildWidget(6, Colors.blue),
                    buildWidget(7, Colors.purple)
                  ],
                ),
              ),
            )));
  }
}
