import 'package:flutter/material.dart';
import 'package:toku_app/widgets/number_container_widget.dart';

import 'Models/Nember.dart';

class Phrases extends StatelessWidget {
  final List<Number> phrasesList = const [
    Number(
      soundPath: 'sounds/phrases/i_love_programming.wav',
      arabName: 'I Love Programmimg',
      engName: 'I Love Programmimg',
    ),
    Number(
      soundPath: 'sounds/phrases/i_love_programming.wav',
      arabName: 'I Love Programmimg',
      engName: 'I Love Programmimg',
    ),
    Number(
      soundPath: 'sounds/phrases/i_love_programming.wav',
      arabName: 'I Love Programmimg',
      engName: 'I Love Programmimg',
    ),
  ];

  const Phrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF322927),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (BuildContext context, int index) {
          return NumberContainerWidget(
              containerColor: Colors.lightGreen, number: phrasesList[index]);
        },
      ),
    );
  }
}
