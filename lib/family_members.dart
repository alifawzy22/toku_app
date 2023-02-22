import 'package:flutter/material.dart';
import 'package:toku_app/widgets/number_container_widget.dart';

import 'Models/Nember.dart';

class FamilyMembers extends StatelessWidget {
  final List<Number> familyMembers = const [
    Number(
      soundPath: 'sounds/family_members/father.wav',
      imagePath: 'assets/images/family_members/family_father.png',
      arabName: 'الأب',
      engName: 'Father',
    ),
    Number(
      soundPath: 'sounds/family_members/mother.wav',
      imagePath: 'assets/images/family_members/family_mother.png',
      arabName: 'الأم',
      engName: 'Mother',
    ),
    Number(
      soundPath: 'sounds/family_members/son.wav',
      imagePath: 'assets/images/family_members/family_older_brother.png',
      arabName: 'الاخ الاكبر',
      engName: 'Older Brother',
    ),
    Number(
      soundPath: 'sounds/family_members/daughter.wav',
      imagePath: 'assets/images/family_members/family_older_sister.png',
      arabName: 'الاخت الاكبر',
      engName: 'Older Sister',
    ),
  ];

  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF322927),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return NumberContainerWidget(
                containerColor: Colors.green,
                bgImageColor: Colors.yellow,
                number: familyMembers[index]);
          }),
    );
  }
}
