import 'package:cafe/services/coffees.drink.service.dart';
import 'package:cafe/services/coffees.food.service.dart';
import 'package:cafe/services/coffees.drink.at.home.service.dart';
import 'package:cafe/services/coffees.food.at.home.service.dart';
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
  late List drinks;
  late List foods;
  late List drinkAtHome;
  late List foodAtHome;

  late List drinksFilter;
  late List foodsFilter;
  late List drinkAtHomeFilter;
  late List foodAtHomeFilter;
  late int idx;

  @override
  void initState() {
    // Lists
    drinks = CoffeesDrinkService.coffees;
    foods = CoffeesFoodService.foods;
    drinkAtHome = CoffeesDrinkAtHomeService.drinkAtHome;
    foodAtHome = CoffeesFoodAtHomeService.foodAtHome;

    // Filters
    drinksFilter = drinks
        .where(
          (element) => element.category == CategoryEnum.drink,
        )
        .toList();
    foodsFilter = foods
        .where(
          (element) => element.category == CategoryEnum.food,
        )
        .toList();
    drinkAtHomeFilter = drinkAtHome
        .where(
          (element) => element.category == CategoryEnum.drinkAtHome,
        )
        .toList();
    foodAtHomeFilter = foodAtHome
        .where(
          (element) => element.category == CategoryEnum.foodAtHome,
        )
        .toList();

    super.initState();
  }

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
      drinkAtHome: CoffeesDrinkAtHomeService.drinkAtHome,
      foodAtHome: CoffeesFoodAtHomeService.foodAtHome,
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
      list: CoffeesDrinkAtHomeService.drinkAtHome,
    ),
    SubTitleWithList(
      title: 'Food at Home',
      list: CoffeesFoodAtHomeService.foodAtHome,
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
