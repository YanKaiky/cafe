import 'package:cafe/repositories/coffees.repository.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.dart';
import 'package:flutter/material.dart';

class ListBodyHomeScreen extends StatelessWidget {
  const ListBodyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coffees = CoffeesRepository.coffees;

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffees.length,
        itemBuilder: (context, i) {
          return CoffeeCard(coffee: coffees[i]);
        },
      ),
    );
  }
}
