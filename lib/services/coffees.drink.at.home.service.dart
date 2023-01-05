import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';

class CoffeesDrinkAtHomeService {
  static List<CoffeesModel> drinkAtHome = [
    CoffeesModel(
      '74ea00a8-e397-427c-9d29-363dd35df2e0',
      5.0,
      'Paper Cup Coffee',
      'Choose the option.',
      CategoryEnum.drinkAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cup.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}
