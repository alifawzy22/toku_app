import 'package:flutter/material.dart';
import 'package:toku_app/Models/Nember.dart';
import 'package:toku_app/widgets/number_container_widget.dart';

class Numbers extends StatelessWidget {
  final List<Number> numbers = const [
    Number(
      soundPath: 'sounds/numbers/number_one_sound.mp3',
      imagePath: 'assets/images/numbers/number_one.png',
      arabName: 'One',
      engName: 'Ichi',
    ),
    Number(
      soundPath: 'sounds/numbers/number_two_sound.mp3',
      imagePath: 'assets/images/numbers/number_two.png',
      arabName: 'Two',
      engName: 'Ni',
    ),
    Number(
      soundPath: 'sounds/numbers/number_three_sound.mp3',
      imagePath: 'assets/images/numbers/number_three.png',
      arabName: 'Three',
      engName: 'San',
    ),
    Number(
      soundPath: 'sounds/numbers/number_four_sound.mp3',
      imagePath: 'assets/images/numbers/number_four.png',
      arabName: 'Four',
      engName: 'Shi',
    ),
    Number(
      soundPath: 'sounds/numbers/number_five_sound.mp3',
      imagePath: 'assets/images/numbers/number_five.png',
      arabName: 'Five',
      engName: 'Go',
    ),
    Number(
      soundPath: 'sounds/numbers/number_six_sound.mp3',
      imagePath: 'assets/images/numbers/number_six.png',
      arabName: 'Six',
      engName: 'Roku',
    ),
    Number(
      soundPath: 'sounds/numbers/number_seven_sound.mp3',
      imagePath: 'assets/images/numbers/number_seven.png',
      arabName: 'Seven',
      engName: 'Sebun',
    ),
    Number(
      soundPath: 'sounds/numbers/number_eight_sound.mp3',
      imagePath: 'assets/images/numbers/number_eight.png',
      arabName: 'Eight',
      engName: 'Hachi',
    ),
    Number(
      soundPath: 'sounds/numbers/number_nine_sound.mp3',
      imagePath: 'assets/images/numbers/number_nine.png',
      arabName: 'Nine',
      engName: 'Kyu',
    ),
    Number(
      soundPath: 'sounds/numbers/number_ten_sound.mp3',
      imagePath: 'assets/images/numbers/number_ten.png',
      arabName: 'Ten',
      engName: 'Ju',
    ),
  ];

  const Numbers({super.key});

  List<Widget> getList(List<Number> numbers) {
    List<Widget> listItems = [];
    for (int i = 0; i < numbers.length; i++) {
      listItems.add(NumberContainerWidget(
          bgImageColor: const Color(0xFFe9e7d2),
          containerColor: const Color(0xFFd68836),
          number: numbers[i]));
    }
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF322927),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberContainerWidget(
              bgImageColor: const Color(0xFFe9e7d2),
              containerColor: const Color(0xFFd68836),
              number: numbers[index]);
        },
      ),
    );
  }
}
