import 'package:flutter/material.dart';
import 'package:mad1_recipe_app/data/data.dart';
import 'package:mad1_recipe_app/models/recipe.dart';

import '../models/category.dart';
import '../widgets/recipetile.dart';

class RecipeListScreen extends StatelessWidget {
  RecipeListScreen({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    var filteredList = RECIPES
        .where((element) => element.categoryId == category.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => RecipeTile(recipe: filteredList[index]),
        itemCount: filteredList.length,
      ),
    );
  }
}
