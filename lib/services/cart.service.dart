import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';

class CartService {
  static List<CoffeesModel> drinkAtHome = [
    CoffeesModel(
      '74ea00a8-e397-427c-9d29-363dd35df2e0',
      5.0,
      'Paper Cup Coffee',
      'Choose the option.',
      Category.drinkAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cup.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '67affd5f-c0c8-4189-b9d5-29c571cc3bca',
      5.0,
      'Donut',
      'Black Chocolate or White Chocolate.',
      Category.food,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/donut.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'a3515c28-3531-471c-96ec-64085cb8e069',
      4.5,
      'Cappuccino',
      'With black chocolate.',
      Category.drink,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cappuccino-with-chocolate.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '18231870-0b3f-418e-8c6f-d238bf9dab09',
      4.5,
      'Cookies Banilla',
      'Banilla with Black chocolate.',
      Category.foodAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cookies.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}
