import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.description.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final CoffeesModel coffee;

  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: yDefaultPadding,
        left: yDefaultPadding + 5,
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: CoffeCardDescription(coffee: coffee),
      ),
    );
  }
}
