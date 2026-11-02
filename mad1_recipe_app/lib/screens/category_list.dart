import 'package:flutter/material.dart';

import '../widgets/categorytile.dart';
import '../data/data.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pinoy Recipes"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: .all(8),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 8,
        //   crossAxisSpacing: 8,
        // ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 3 / 2, //width / height
        ),
        itemBuilder: (_, index) => CategoryTile(category: CATEGORIES[index]),
        itemCount: CATEGORIES.length,
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      //   children: [
      //     Container(height: 100, width: 100, color: Colors.red),
      //     Container(height: 100, width: 100, color: Colors.blue),
      //     Container(height: 100, width: 100, color: Colors.yellow),
      //     Container(height: 100, width: 100, color: Colors.brown),
      //     Container(height: 100, width: 100, color: Colors.black),
      //   ],
      // ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //   ),
      //   itemBuilder: (_, index) =>
      //       Container(height: 100, width: 100, color: Colors.blue),
      //   itemCount: 9,
      // ),
    );
  }
}
