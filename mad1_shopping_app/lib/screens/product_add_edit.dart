import 'package:flutter/material.dart';
import 'package:mad1_shopping_app/helpers/dbhelper.dart';
import 'package:sqflite/sqflite.dart';

class ProductAddEditScreen extends StatelessWidget {
  const ProductAddEditScreen({super.key});

  void save() {
    // DbHelper.insertProductRaw();
    DbHelper.insertProduct();
    DbHelper.queryProductsRaw();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add/Edit'),
        actions: [IconButton(onPressed: save, icon: Icon(Icons.save))],
      ),
    );
  }
}
