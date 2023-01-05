class NotificationsModel {
  final String guid;
  final double price;
  final String name;
  final String message;
  final DateTime createdAt;
  final DateTime updatedAt;

  NotificationsModel(
    this.guid,
    this.price,
    this.name,
    this.message,
    this.createdAt,
    this.updatedAt,
  );
}
