import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Play Audio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () async {
                AudioPlayer player = AudioPlayer();

                await player.play(
                    "https://s3-eu-west-1.amazonaws.com/com.idmgroup.lab.sounds.prod/nl/a/c/f/acfb61ada579f583a960968f848e18d4.mp3");
              },
              icon: const Icon(Icons.play_arrow),
              label: const Text("Dari Internet"),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                final player = AudioCache();
                player.play("audio.mp3");
              },
              icon: const Icon(Icons.play_arrow),
              label: const Text("Dari Asset"),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
