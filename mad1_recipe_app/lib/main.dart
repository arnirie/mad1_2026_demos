import 'package:flutter/material.dart';
import 'package:mad1_recipe_app/screens/category_list.dart';

void main() {
  runApp(const RecipeApp());
}

//TODO: Recipe App
//! 1) Category List Screen
//! 2) Categories (data list)
// 3) Recipe Screen
// 4) Recipies (data list)
// 5) View individual recipies

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
