import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/recipe.dart';

List<Category> CATEGORIES = [
  Category(id: 1, name: 'Iloco', color: Colors.blue),
  Category(id: 2, name: 'Kapampangan', color: Colors.yellow),
  Category(id: 3, name: 'Tagalog', color: Colors.amber),
  Category(id: 4, name: 'Bicol', color: Colors.red),
  Category(id: 5, name: 'Visayas', color: Colors.purple),
  Category(id: 5, name: 'Mindanao', color: Colors.cyan),
];

List<Recipe> RECIPES = [
  Recipe(
    id: 1,
    categoryId: 3,
    name: 'Sinigang na Baboy',
    steps: [
      'Boil the young tamarind in 2 quarts of water for 40 minutes. Filter the tamarind broth using a kitchen sieve or a strainer. Squeeze the tamarind afterwards to extract its remaining juices.',
      'Pour the tamarind broth into a cooking pot. Let it boil and then add the onion, pork belly, and half the amount of the tomatoes.'
          'Skim-off the floating scums, pour 1 tablespoon fish sauce, cover and continue to simmer for 1 hour.',
      'Add daikon radish and eggplants. Cook for 5 minutes.',
      'Add the long green pepper, string beans, remaining tomatoes, and okra. Cook for 3 minutes.',
      'Add the chopped water spinach stalks and season with fish sauce and ground black pepper. Cook for 2 minutes.',
      'Fish sauce and ground black pepper',
      'Put the water spinach leaves. Cover and turn the heat off. Let the residual heat cook the leaves for 3 minutes before serving.',
      'Share and enjoy!',
    ],
    ingredients: [
      '2 lbs. pork belly see notes',
      '1 lb. young tamarind see notes',
      '1 bunch water spinach chopped',
      '8 pieces string beans cut into 2-inch pieces',
      '2 pieces Chinese eggplant sliced'
          '1 piece daikon radish see notes'
          '8 pieces okra'
          '2 pieces tomatoes sliced into wedges',
      '2 pieces long green pepper',
      '1 piece onion sliced into wedges'
          '2 quarts water',
    ],
    duration: 60,
    servings: 4,
    imageUrl: 'https://panlasangpinoy.com/wp-content/uploads/2022/09/sinigang-na-baboy.jpg',
  ),
  Recipe(
    id: 2,
    categoryId: 1,
    name: 'Beef Pinapaitan',
    steps: [
      'Wash beef tripe and small intestine. Boil with ginger and dried bay leaves for 45 minutes. Remove from the pot and let it cool down. Slice into bite-size pieces.',
      'Heat oil in a pan. Sauté onion, garlic, and ginger until onion softens.',
      'Add beef heart and kidney. Sauté until it turns light brown.',
      'Put the tripe and small intestines into the pot. Cook for 2 minutes.',
      'Pour water into the pot. Let is boil. Adjust heat to low. Continue boiling until beef heart and kidney tenderizes.',
      'Add beef liver and bile. Stir. Cook for 15 minutes in medium heat.',
      'Add Knorr Sinigang sa Sampaloc Recipe Mix.',
      'Put long green peppers into the pot and season with salt and ground black pepper. Stir. Cook for 2 minutes.',
      'Transfer to a serving bowl. Serve hot.',
    ],
    ingredients: [
      '1 lb beef heart cubed',
      '1 lb beef small intestine cleaned',
      '1 lb beef tripe cleaned',
      '1/2 lb beef liver cubed',
      '1 lb beef kidney cubed',
      '22 grams Knorr Sinigang sa Sampaloc Mix',
      '1 piece onion chopped',
      '3 thumbs ginger minced',
      '5 cloves garlic crushed',
      '3 piece long green pepper sliced',
      '8 cups water',
      'beef bile to taste',
      'Salt and pepper to taste',
      '3 tablespoons cooking oil',
    ],
    duration: 90,
    servings: 6,
    imageUrl: 'https://panlasangpinoy.com/wp-content/uploads/2020/08/beef-papaitan.jpg',
  ),
];
