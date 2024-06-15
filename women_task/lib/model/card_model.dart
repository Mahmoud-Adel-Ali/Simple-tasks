import 'package:flutter/material.dart';

class CardModel {
  final String imagePath;
  final String name;
  final double price;
  final Color backgroundColor;

  CardModel(
      {required this.imagePath,
      required this.name,
      required this.price,
      required this.backgroundColor});
}
