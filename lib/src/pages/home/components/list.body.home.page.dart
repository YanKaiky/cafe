import 'package:cafe/components/buttom.all.view.dart';
import 'package:cafe/src/pages/home/components/coffee.card/coffee.card.dart';
import 'package:cafe/src/pages/lists/list.page.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ListBodyHomePage extends StatelessWidget {
  const ListBodyHomePage({
    Key? key,
    required this.title,
    required this.coffees,
  }) : super(key: key);

  final String title;
  final List coffees;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final coffeesLength = coffees.length;

    return SizedBox(
      height: size.height / 2,
      child: ListView.builder(
        padding: EdgeInsets.only(right: yDefaultPadding + 5),
        scrollDirection: Axis.horizontal,
        itemCount: (coffeesLength > 7 ? 7 : coffeesLength) + 1,
        itemBuilder: (context, i) {
          if (i == (coffeesLength > 7 ? 7 : coffeesLength)) {
            return Visibility(
              visible: coffeesLength > 3 ? true : false,
              child: ButtonAllView(
                size: 'L',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListPage(
                        title: title,
                        coffees: coffees,
                      ),
                    ),
                  );
                },
              ),
            );
          }

          return CoffeeCard(coffee: coffees[i]);
        },
      ),
    );
  }
}
