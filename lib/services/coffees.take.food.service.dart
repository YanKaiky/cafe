import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';

class CoffeesTakeFoodService {
  static List<CoffeesModel> takesFood = [
    CoffeesModel(
      '2eac1710-6dab-43f7-a85f-0fb186b4d7be',
      4.5,
      'Christmas Cookies Box',
      'Dark chocolate and vanilla.',
      Category.take,
      'assets/images/cookies-box.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '18231870-0b3f-418e-8c6f-d238bf9dab09',
      4.5,
      'Christmas Cookies',
      'Banilla with Black chocolate.',
      Category.take,
      'assets/images/cookies.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'c44ad968-09e1-410d-8c31-57ce47828d57',
      4.5,
      'Christmas Cookies',
      'Christmas delight.',
      Category.take,
      'assets/images/christmas-cookies.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '2df6ad68-9432-4e11-ac10-bee48f1d9aaa',
      4.5,
      'Christmas Cookies Take',
      'Christmas delight.',
      Category.take,
      'assets/images/christmas-cookies-take.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}
