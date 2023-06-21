import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class audio_page extends StatefulWidget {
  const audio_page({super.key});

  @override
  State<audio_page> createState() => _audio_pageState();
}

class _audio_pageState extends State<audio_page> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  void palyaudio() {
    assetsAudioPlayer.open(
      Audio.network(""),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    palyaudio();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: assetsAudioPlayer.currentPosition,
            builder: (context, AsyncSnapshot snapshot) {
              Duration duration = snapshot.data;
              return
              Text(duration.toString().split(".")[0]);
            }
          ),
        ],
      ),
    );
  }
}
