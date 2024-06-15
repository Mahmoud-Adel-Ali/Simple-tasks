// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:women_task/model/card_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: cardModel.backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(cardModel.imagePath),
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              cardModel.name,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Text(
            "\$${cardModel.price.toString()}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
