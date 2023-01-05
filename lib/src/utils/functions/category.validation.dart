import 'package:cafe/src/utils/enums/category.enum.dart';

categoryValidation(CategoryEnum category) {
  switch (category) {
    case CategoryEnum.drink:
      return 'Drink';
    case CategoryEnum.food:
      return 'Food';
    case CategoryEnum.drinkAtHome:
      return 'Drink at home';
    case CategoryEnum.foodAtHome:
      return 'Food at home';
    default:
  }
}
