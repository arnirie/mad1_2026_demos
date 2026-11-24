import 'package:flutter/material.dart';
import 'package:mad1_shopping_app/screens/product_add_edit.dart';
import 'package:mad1_shopping_app/widgets/appdrawer.dart';

class ProductManagementScreen extends StatelessWidget {
  const ProductManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Product Management'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => ProductAddEditScreen())),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(),
    );
  }
}
