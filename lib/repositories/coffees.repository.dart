import 'package:cafe/models/coffees.model.dart';

class CoffeesRepository {
  static List<CoffeesModel> coffees = [
    CoffeesModel(
      '8bd7c112-c894-4a63-b6c4-1aaeca657a6f',
      4.0,
      'Cappuccino',
      'With or without Cinnamon powder.',
      'assets/images/cappuccino.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '6f53513e-3760-467b-9526-dfa6a43fccf9',
      3.0,
      'Black Coffee',
      'With or without sugar.',
      'assets/images/black.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'd9c25a3e-9492-4342-a0d6-5c4cb2c198d4',
      3.10,
      'Black with milk',
      'With or without sugar.',
      'assets/images/with-milk.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '972219f0-9f0f-4209-8778-53c59150bf82',
      4.10,
      'Cappuccino with Cinnamon powder',
      'With or without sugar.',
      'assets/images/cinnamon-powder.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '7a377283-13e0-4a2f-85d3-e3390eb5bd46',
      4.10,
      'Cold Coffee',
      'With or without Chantilly.',
      'assets/images/cold.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '74ea00a8-e397-427c-9d29-363dd35df2e0',
      5.0,
      'Paper Cup Coffee',
      'Choose the option.',
      'assets/images/cup.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}
