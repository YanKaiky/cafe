import 'package:cafe/models/coffees.model.dart';
import 'package:cafe/src/utils/enums/category.enum.dart';

class CoffeesFoodService {
  static List<CoffeesModel> foods = [
    CoffeesModel(
      '67affd5f-c0c8-4189-b9d5-29c571cc3bca',
      5.0,
      'Donut',
      'Black Chocolate or White Chocolate.',
      CategoryEnum.food,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/donut.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '2eac1710-6dab-43f7-a85f-0fb186b4d7be',
      4.5,
      'Christmas Cookies Box',
      'Dark chocolate and vanilla.',
      CategoryEnum.foodAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cookies-box.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '18231870-0b3f-418e-8c6f-d238bf9dab09',
      4.5,
      'Cookies Banilla',
      'Banilla with Black chocolate.',
      CategoryEnum.foodAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/cookies.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      'c44ad968-09e1-410d-8c31-57ce47828d57',
      4.5,
      'Christmas Cookies',
      'Christmas delight.',
      CategoryEnum.foodAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/christmas-cookies.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
    CoffeesModel(
      '2df6ad68-9432-4e11-ac10-bee48f1d9aaa',
      4.5,
      'Christmas Cookies Take',
      'Christmas delight.',
      CategoryEnum.foodAtHome,
      'https://coffy-online-shop.s3.sa-east-1.amazonaws.com/christmas-cookies-take.jpg',
      DateTime.parse('2022-12-25T09:22:50.270Z'),
      DateTime.parse('2022-12-25T09:22:50.270Z'),
    ),
  ];
}
