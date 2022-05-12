import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(String file) {
    final player = AudioCache();
    player.play(file);
  }

  Widget buildSection(String file, Color color) {
    return Expanded(
      child: FlatButton(
        padding: const EdgeInsets.all(0),
        child: Container(
          color: color,
        ),
        onPressed: () => playSound(file),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildSection('note1.wav', Colors.red),
        buildSection('note2.wav', Colors.orange),
        buildSection('note3.wav', Colors.yellow),
        buildSection('note4.wav', Colors.green),
        buildSection('note5.wav', Colors.teal),
        buildSection('note6.wav', Colors.blue),
        buildSection('note7.wav', Colors.cyan),
      ],
    );
  }
}
