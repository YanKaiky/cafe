import 'package:cafe/services/coffees.service.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ListBodyHomePage extends StatelessWidget {
  const ListBodyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final coffees = CoffeesService.coffees;

    return SizedBox(
      height: size.height * 0.5,
      child: ListView.builder(
        padding: EdgeInsets.only(right: yDefaultPadding + 5),
        scrollDirection: Axis.horizontal,
        itemCount: coffees.length,
        itemBuilder: (context, i) {
          return CoffeeCard(coffee: coffees[i]);
        },
      ),
    );
  }
}
