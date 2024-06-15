import 'package:flutter/material.dart';
import 'package:women_task/model/card_model.dart';
import 'package:women_task/widgets/custom_card.dart';

class HandBagView extends StatelessWidget {
  const HandBagView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/5,
        crossAxisSpacing: 10,
      ),
      itemCount: allCards.length,
      itemBuilder: (context, index) {
        return CustomCard(cardModel: allCards[index]);
      },
    );
  }
}

List<CardModel> allCards = [
  CardModel(
    imagePath: 'assets/images/bag_1.png',
    name: 'Office Code',
    price: 233.99,
    backgroundColor: Colors.blueAccent,
  ),
  CardModel(
    imagePath: 'assets/images/bag_2.png',
    name: 'Belt Bag',
    price: 233.99,
    backgroundColor: Colors.brown.shade300,
  ),
  CardModel(
    imagePath: 'assets/images/bag_3.png',
    name: 'Hang Top',
    price: 233.99,
    backgroundColor: Colors.grey,
  ),
  CardModel(
    imagePath: 'assets/images/bag_4.png',
    name: 'Old Fashion',
    price: 233.99,
    backgroundColor: Colors.brown.shade100,
  ),
  CardModel(
    imagePath: 'assets/images/bag_5.png',
    name: 'New Model',
    price: 233.99,
    backgroundColor: Colors.pink.shade300,
  ),
  CardModel(
    imagePath: 'assets/images/bag_6.png',
    name: 'Black Bag',
    price: 233.99,
    backgroundColor: Colors.grey.shade500,
  ),
];
