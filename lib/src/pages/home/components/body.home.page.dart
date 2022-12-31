import 'package:cafe/services/coffees.drink.service.dart';
import 'package:cafe/services/coffees.food.service.dart';
import 'package:cafe/services/coffees.take.drink.service.dart';
import 'package:cafe/services/coffees.take.food.service.dart';
import 'package:cafe/src/pages/home/components/coffee.type.dart';
import 'package:cafe/src/pages/home/components/search.coffee.home.page.dart';
import 'package:cafe/src/pages/home/components/subtitle.with.list.dart';
import 'package:cafe/src/pages/home/components/title.home.page.dart';
import 'package:cafe/src/pages/home/components/list.all.dart';
import 'package:cafe/src/utils/constants.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';
import 'package:flutter/material.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  // Lists
  final drinks = CoffeesDrinkService.coffees;
  final foods = CoffeesFoodService.foods;
  final drinkAtHome = CoffeesTakeDrinkService.drinkAtHome;
  final foodAtHome = CoffeesTakeFoodService.foodAtHome;

  // Filters
  final drinksFilter = CoffeesDrinkService.coffees.where(
    (element) => element.category == Category.drink,
  );

  final foodsFilter = CoffeesFoodService.foods.where(
    (element) => element.category == Category.food,
  );

  final takesDrinkFilter = CoffeesTakeDrinkService.drinkAtHome.where(
    (element) => element.category == Category.drinkAtHome,
  );

  final takesFoodFilter = CoffeesTakeFoodService.foodAtHome.where(
    (element) => element.category == Category.foodAtHome,
  );

  final List coffeeType = [
    ['All', true],
    ['Drinks', false],
    ['Food', false],
    ['Drink at Home', false],
    ['Food at Home', false],
  ];

  int selectedIndex = 0;

  final List<Widget> screens = [
    ListAll(
      drinks: CoffeesDrinkService.coffees,
      foods: CoffeesFoodService.foods,
      drinkAtHome: CoffeesTakeDrinkService.drinkAtHome,
      foodAtHome: CoffeesTakeFoodService.foodAtHome,
    ),
    SubTitleWithList(
      title: 'Drinks',
      list: CoffeesDrinkService.coffees,
    ),
    SubTitleWithList(
      title: 'Food',
      list: CoffeesFoodService.foods,
    ),
    SubTitleWithList(
      title: 'Drink at Home',
      list: CoffeesTakeDrinkService.drinkAtHome,
    ),
    SubTitleWithList(
      title: 'Food at Home',
      list: CoffeesTakeFoodService.foodAtHome,
    ),
  ];

  void onTapped(int index) {
    setState(() {
      for (var i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;

        selectedIndex = index;
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
          screens[selectedIndex]
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
            onTap: () => onTapped(i),
          );
        },
      ),
    );
  }
}
