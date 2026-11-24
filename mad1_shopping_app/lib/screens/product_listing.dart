import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad1_shopping_app/data/products.dart';
import 'package:mad1_shopping_app/models/product.dart';
import 'package:mad1_shopping_app/widgets/appdrawer.dart';

import '../widgets/product_tile.dart';

class ProductListingScreen extends StatefulWidget {
  const ProductListingScreen({super.key});

  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    filterProducts(true);
  }

  void filterProducts(bool showAll) {
    if (showAll) {
      productList = PRODUCTS;
    } else {
      productList = PRODUCTS.where((p) => p.isFavorite).toList();
    }
    print(productList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          'Product Listing',
          style: GoogleFonts.montserrat(fontWeight: .bold),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                filterProducts(value);
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: false, child: Text('Favorites')),
              PopupMenuItem(value: true, child: Text('Show All')),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        padding: .all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: productList.length,
        itemBuilder: (_, index) => ProductTile(product: productList[index]),
      ),
    );
  }
}
