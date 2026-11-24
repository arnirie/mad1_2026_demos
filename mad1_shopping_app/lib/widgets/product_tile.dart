import 'package:flutter/material.dart';
import 'package:mad1_shopping_app/models/product.dart';

class ProductTile extends StatefulWidget {
  ProductTile({super.key, required this.product});

  Product product;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: GridTile(
          header: GridTileBar(
            leading: IconButton(
              onPressed: () => setState(() {
                widget.product.toggleFavorite();
              }),
              icon: Icon(
                widget.product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_outline,
                color: Colors.redAccent,
              ),
            ),
            // backgroundColor: Colors.black26,
          ),
          footer: GridTileBar(
            title: Text(widget.product.name),
            trailing: Icon(Icons.shopping_cart),
            backgroundColor: Colors.black87,
          ),
          child: Image.network(
            widget.product.imageUrl ?? 'https://www.greencustoms.org/sites/default/files/default_images/default-placeholder.png',
            fit: .cover,
          ),
        ),
      ),
    );
  }
}
