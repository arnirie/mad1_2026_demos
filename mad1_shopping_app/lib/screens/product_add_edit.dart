import 'package:flutter/material.dart';
import 'package:mad1_shopping_app/helpers/dbhelper.dart';
import 'package:mad1_shopping_app/models/product.dart';
import 'package:sqflite/sqflite.dart';

class ProductAddEditScreen extends StatefulWidget {
  const ProductAddEditScreen({super.key});

  @override
  State<ProductAddEditScreen> createState() => _ProductAddEditScreenState();
}

class _ProductAddEditScreenState extends State<ProductAddEditScreen> {
  var nameCtrl = TextEditingController();
  var descCtrl = TextEditingController();
  var priceCtrl = TextEditingController();
  var imageCtrl = TextEditingController();

  void save() async {
    // DbHelper.insertProductRaw();
    // DbHelper.insertProduct();
    // DbHelper.queryProducts();
    //insert
    var product = Product.empty(
      name: nameCtrl.text,
      description: descCtrl.text,
      price: double.tryParse(priceCtrl.text) ?? 0,
      imageUrl: imageCtrl.text.isEmpty ? null : imageCtrl.text,
    );
    int id = await DbHelper.insertProduct(product);
    if (id > 0) {
      Navigator.of(context)
          .pop(true); //passign true to signify successful operation
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.backup_outlined),
        ),
        title: Text('Add/Edit'),
        actions: [IconButton(onPressed: save, icon: Icon(Icons.save))],
      ),
      body: ListView(
        padding: .all(8),
        children: [
          TextField(controller: nameCtrl),
          TextField(controller: descCtrl),
          TextField(controller: priceCtrl),
          TextField(controller: imageCtrl),
        ],
      ),
    );
  }
}
