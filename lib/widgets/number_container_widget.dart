import 'package:flutter/material.dart';
import 'package:toku_app/Models/Nember.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberContainerWidget extends StatelessWidget {
  final Number number;
  final Color? bgImageColor;
  final Color containerColor;
  const NumberContainerWidget(
      {required this.containerColor,
      this.bgImageColor,
      required this.number,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: containerColor,
      child: Row(
        children: [
          number.imagePath == null
              ? Container()
              : Container(
                  color: bgImageColor,
                  child: Image.asset(number.imagePath!),
                ),
          Container(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.arabName,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.engName,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              AudioPlayer player = AudioPlayer();
              await player.play(
                AssetSource(number.soundPath),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
