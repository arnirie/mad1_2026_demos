import 'package:flutter/material.dart';
import 'package:mad1_recipe_app/screens/recipe_view.dart';

import '../models/recipe.dart';

class RecipeTile extends StatelessWidget {
  const new({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => RecipeViewScreen(recipe: recipe)),
      ),
      child: Card(
        child: Column(
          mainAxisSize: .min,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: ClipRRect(
                    // borderRadius: .circular(10),
                    borderRadius: .only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(recipe.imageUrl!, fit: .cover),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: .all(4),
                    color: Colors.black54,
                    child: Text(
                      recipe.name,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      overflow: .ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    mainAxisSize: .min,
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 4),
                      Text('${recipe.servings} person(s)'),
                    ],
                  ),
                  Row(
                    mainAxisSize: .min,
                    children: [
                      Icon(Icons.timer),
                      SizedBox(width: 4),
                      Text('${recipe.duration} min'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
