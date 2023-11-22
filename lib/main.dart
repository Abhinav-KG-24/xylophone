import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

void playSound(String note) {
  final player = AudioPlayer();
  player.play(AssetSource(note));
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
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              playSound('note1.wav');
                            },
                            child: Text(''))),
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              playSound('note2.wav');
                            },
                            child: Text(''))),
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.yellow),
                            onPressed: () {
                              playSound('note3.wav');
                            },
                            child: Text(''))),
                    Expanded(
                        child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.lightGreen[400]),
                      onPressed: () {
                        playSound('note4.wav');
                      },
                      child: Text(''),
                    )),
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              playSound('note5.wav');
                            },
                            child: Text(''))),
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              playSound('note6.wav');
                            },
                            child: Text(''))),
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple),
                            onPressed: () {
                              playSound('note7.wav');
                            },
                            child: Text('')))
                  ],
                ),
              ),
            )));
  }
}
