import 'package:flutter/material.dart';

class HomePageContainerWidget extends StatelessWidget {
  final Color color;
  final String text;
  final void Function()? ontap;

  const HomePageContainerWidget(
      {required this.text, required this.color, this.ontap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 80,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(
          left: 16,
        ),
        color: color, //Color(0xFFf99531),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
