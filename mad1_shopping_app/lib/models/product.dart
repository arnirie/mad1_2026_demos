class Product {
  int id;
  String name;
  String description;
  double price;
  String? imageUrl;
  bool isFavorite = false;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}
