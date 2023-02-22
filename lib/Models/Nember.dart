import 'package:flutter/material.dart';

class Number {
  final String soundPath;
  final String? imagePath;
  final String arabName;
  final String engName;

  const Number({
    required this.soundPath,
    this.imagePath,
    required this.arabName,
    required this.engName,
  });
}
