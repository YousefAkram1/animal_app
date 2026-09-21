import 'package:animal_app/features/home/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CardItem();
        },
      ),
    );
  }
}
