class CoffeesModel {
  final String guid;
  final double price;
  final String name;
  final String description;
  final bool favorite;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;

  CoffeesModel(
    this.guid,
    this.price,
    this.name,
    this.description,
    this.favorite,
    this.image,
    this.createdAt,
    this.updatedAt,
  );
}
