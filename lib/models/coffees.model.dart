class CoffeesModel {
  final String guid;
  final double price;
  final String name;
  final String description;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;

  CoffeesModel(
    this.guid,
    this.price,
    this.name,
    this.description,
    this.image,
    this.createdAt,
    this.updatedAt,
  );
}
