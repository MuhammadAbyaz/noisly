import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> playAudio(url) async {
  final audioPlayer = AudioPlayer();
  audioPlayer.setAsset(url);
  audioPlayer.play();
  audioPlayer.setLoopMode(LoopMode.all);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Noisly"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                playAudio("assets/camp.mp3");
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              child: const Text(
                "Click me",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )
      ]),
    );
  }
}
