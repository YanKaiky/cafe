import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';

class CoffeesDrinkService {
  static List<CoffeesModel> coffees = [
    CoffeesModel(
      '8bd7c112-c894-4a63-b6c4-1aaeca657a6f',
      4.0,
      'Cappuccino',
      'With or without sugar.',
      Category.drink,
      'assets/images/cappuccino.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '6f53513e-3760-467b-9526-dfa6a43fccf9',
      3.0,
      'Black Coffee',
      'With or without sugar.',
      Category.drink,
      'assets/images/black.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'd9c25a3e-9492-4342-a0d6-5c4cb2c198d4',
      3.10,
      'Black Coffee',
      'With milk.',
      Category.drink,
      'assets/images/with-milk.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '972219f0-9f0f-4209-8778-53c59150bf82',
      4.10,
      'Cappuccino',
      'With or without Cinnamon powder.',
      Category.drink,
      'assets/images/cinnamon-powder.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '7a377283-13e0-4a2f-85d3-e3390eb5bd46',
      4.10,
      'Cold Coffee',
      'With or without Chantilly.',
      Category.drink,
      'assets/images/cold.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '68eb6fac-b281-473e-bff6-0030baa86110',
      4.5,
      'Tea',
      'Hot or Iced',
      Category.drink,
      'assets/images/tea.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'a3515c28-3531-471c-96ec-64085cb8e069',
      4.5,
      'Cappuccino',
      'With black chocolate.',
      Category.drink,
      'assets/images/cappuccino-with-chocolate.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'aa78edde-a6ad-4efc-a370-bd1487843172',
      4.5,
      'Cappuccino',
      'With cookies.',
      Category.drink,
      'assets/images/cappuccino-with-cookie.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}