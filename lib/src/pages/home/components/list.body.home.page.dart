import 'package:cafe/components/buttom.all.view.dart';
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
    final coffeesLength = coffees.length;

    return SizedBox(
      height: size.height * 0.5,
      child: ListView.builder(
        padding: EdgeInsets.only(right: yDefaultPadding + 5),
        scrollDirection: Axis.horizontal,
        itemCount: (coffeesLength > 7 ? 7 : coffeesLength) + 1,
        itemBuilder: (context, i) {
          if (i == 7) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: yDefaultPadding * 4,
                left: yDefaultPadding + 5,
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 100,
                child: ButtonAllView(),
              ),
            );
          }

          return CoffeeCard(coffee: coffees[i]);
        },
      ),
    );
  }
}
