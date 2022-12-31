import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/pages/home/components/subtitle.with.list.dart';
import 'package:flutter/material.dart';

class ListAll extends StatelessWidget {
  const ListAll({
    Key? key,
    required this.drinks,
    required this.foods,
    required this.drinkAtHome,
    required this.foodAtHome,
  }) : super(key: key);

  final List<CoffeesModel> drinks;
  final List<CoffeesModel> foods;
  final List<CoffeesModel> drinkAtHome;
  final List<CoffeesModel> foodAtHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubTitleWithList(title: 'Drinks', list: drinks),
        SubTitleWithList(title: 'Food', list: foods),
        SubTitleWithList(title: 'Drink at Home', list: drinkAtHome),
        SubTitleWithList(title: 'Food at Home', list: foodAtHome),
      ],
    );
  }
}
