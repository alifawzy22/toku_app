import 'package:flutter/material.dart';
import 'package:toku_app/family_members.dart';
import 'package:toku_app/numbers.dart';
import 'package:toku_app/phrases.dart';
import 'package:toku_app/widgets/home_page_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF49332a),
        title: const Text('Toku App'),
      ),
      body: Column(
        children: [
          HomePageContainerWidget(
            text: 'Numbers',
            color: const Color(0xFFf99531),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const Numbers();
                }),
              );
            },
          ),
          HomePageContainerWidget(
            text: 'Family Members',
            color: const Color(0xFF528032),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
          ),
          HomePageContainerWidget(
            text: 'Colors',
            color: const Color(0xFF7d40a2),
            ontap: () {
              //print('Colors');
            },
          ),
          HomePageContainerWidget(
            text: 'Phrases',
            color: const Color(0xFF47a5cb),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Phrases();
              }));
            },
          ),
        ],
      ),
    );
  }
}
