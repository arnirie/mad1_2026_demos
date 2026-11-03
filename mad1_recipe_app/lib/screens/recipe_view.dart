import 'package:flutter/material.dart';

import '../models/recipe.dart';

class RecipeViewScreen extends StatelessWidget {
  const RecipeViewScreen({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: ClipRRect(
              borderRadius: .circular(10),
              // borderRadius: .only(
              //   topLeft: Radius.circular(10),
              //   topRight: Radius.circular(10),
              // ),
              child: Image.network(recipe.imageUrl!, fit: .cover),
            ),
          ),
          Text('Ingredients', style: TextStyle(fontSize: 22)),
          //list<string> ingredients
          ...recipe.ingredients.map((element) {
            print(element);
            return ListTile(title: Text(element));
          }).toList(),
          Text('Steps', style: TextStyle(fontSize: 22)),
          ...recipe.steps
              .map((element) => Card(child: ListTile(title: Text(element))))
              .toList(),
        ],
      ),
    );
  }
}
