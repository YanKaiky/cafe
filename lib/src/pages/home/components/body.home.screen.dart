import 'package:cafe/src/pages/home/components/coffee.type.dart';
import 'package:cafe/src/pages/home/components/list.body.home.screen.dart';
import 'package:cafe/src/pages/home/components/search.coffee.home.screen.dart';
import 'package:cafe/src/pages/home/components/title.home.screen.dart';
import 'package:flutter/material.dart';

class BodyHomeScreen extends StatefulWidget {
  const BodyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyHomeScreen> createState() => _BodyHomeScreenState();
}

class _BodyHomeScreenState extends State<BodyHomeScreen> {
  final List coffeeType = [
    ['Cappuccino', true],
    ['Espresso', false],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (var i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHomeScreen(),
        SizedBox(height: 25),
        SearchCoffeeHomeScreen(),
        SizedBox(height: 25),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeType.length,
            itemBuilder: (context, i) {
              return CoffeeType(
                type: coffeeType[i][0],
                isSelected: coffeeType[i][1],
                onTap: () => coffeeTypeSelected(i),
              );
            },
          ),
        ),
        ListBodyHomeScreen(),
      ],
    );
  }
}
