import 'package:cafe/src/utils/enums/category.enum.dart';

categoryValidation(Category category) {
  switch (category) {
    case Category.drink:
      return 'Drink';
    case Category.food:
      return 'Food';
    case Category.drinkAtHome:
      return 'Drink at home';
    case Category.foodAtHome:
      return 'Food at home';
    default:
  }
}
