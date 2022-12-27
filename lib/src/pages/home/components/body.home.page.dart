import 'package:cafe/src/pages/home/components/coffee.type.dart';
import 'package:cafe/src/pages/home/components/list.body.home.page.dart';
import 'package:cafe/src/pages/home/components/search.coffee.home.page.dart';
import 'package:cafe/src/pages/home/components/title.home.page.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  final List coffeeType = [
    ['All', true],
    ['Cappuccino', false],
    ['Espresso', false],
    ['Black', false],
    ['Tea', false],
    ['Food', false],
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
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          TitleHomePage(),
          SizedBox(height: 25),
          SearchCoffeeHomePage(),
          SizedBox(height: 25),
          _listCoffeType(size),
          ListBodyHomePage(),
        ],
      ),
    );
  }

  SizedBox _listCoffeType(Size size) {
    return SizedBox(
      height: size.height / 12,
      child: ListView.builder(
        padding: EdgeInsets.only(right: yDefaultPadding + 5),
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
    );
  }
}
