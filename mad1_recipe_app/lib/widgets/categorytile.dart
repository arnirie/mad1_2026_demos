import 'package:flutter/material.dart';
import 'package:mad1_recipe_app/screens/recipe_list.dart';

import '../models/category.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => RecipeListScreen(category: category)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), //rounded corners
          gradient: LinearGradient(
            colors: [category.color, category.color.withValues(alpha: 0.3)],
            begin: .topStart,
            end: .bottomEnd,
          ),
        ),
        // color: category.color,
        child: FittedBox(
          fit: .scaleDown,
          child: Text(
            category.name,
            // overflow: .ellipsis,
            // maxLines: 1,
            style: TextStyle(fontSize: 26, fontWeight: .w600),
          ),
        ),
        padding: .all(12),
      ),
    );
  }
}
