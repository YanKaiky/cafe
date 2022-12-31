import 'package:cafe/services/coffees.drink.service.dart';
import 'package:cafe/services/coffees.food.service.dart';
import 'package:cafe/services/coffees.take.drink.service.dart';
import 'package:cafe/services/coffees.take.food.service.dart';
import 'package:cafe/src/pages/home/components/coffee.type.dart';
import 'package:cafe/src/pages/home/components/list.body.home.page.dart';
import 'package:cafe/src/pages/home/components/search.coffee.home.page.dart';
import 'package:cafe/src/pages/home/components/sub.title.dart';
import 'package:cafe/src/pages/home/components/title.home.page.dart';
import 'package:cafe/src/pages/lists/list.page.dart';
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
  final drinks = CoffeesDrinkService.coffees;
  final foods = CoffeesFoodService.foods;
  final takesDrink = CoffeesTakeDrinkService.takesDrink;
  final takesFood = CoffeesTakeFoodService.takesFood;

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
          SubTitle(
            visible: drinks.length > 3 ? true : false,
            subtitle: 'Drinks',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(
                    title: 'Drinks',
                    coffees: drinks,
                  ),
                ),
              );
            },
          ),
          ListBodyHomePage(title: 'Drinks', coffees: drinks),
          SubTitle(
            visible: foods.length > 3 ? true : false,
            subtitle: 'Food',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(
                    title: 'Food',
                    coffees: foods,
                  ),
                ),
              );
            },
          ),
          ListBodyHomePage(title: 'Food', coffees: foods),
          SubTitle(
            visible: takesDrink.length > 3 ? true : false,
            subtitle: 'Takes drink',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(
                    title: 'Takes drink',
                    coffees: takesDrink,
                  ),
                ),
              );
            },
          ),
          ListBodyHomePage(title: 'Takes drink', coffees: takesDrink),
          SubTitle(
            visible: takesFood.length > 3 ? true : false,
            subtitle: 'Takes food',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(
                    title: 'Takes food',
                    coffees: takesFood,
                  ),
                ),
              );
            },
          ),
          ListBodyHomePage(title: 'Takes food', coffees: takesFood),
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
