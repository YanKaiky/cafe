import 'package:cafe/src/utils/enums/category.enum.dart';

class CoffeesModel {
  final String guid;
  final double price;
  final String name;
  final String description;
  final Category category;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;

  CoffeesModel(
    this.guid,
    this.price,
    this.name,
    this.description,
    this.category,
    this.image,
    this.createdAt,
    this.updatedAt,
  );
}
