class Recipe {
  final int id;
  final int categoryId;
  final String name;
  final List<String> steps;
  final List<String> ingredients;
  final int duration;
  final int servings;
  final String? imageUrl;

  Recipe({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.steps,
    required this.ingredients,
    required this.duration,
    required this.servings,
    this.imageUrl,
  });
}
