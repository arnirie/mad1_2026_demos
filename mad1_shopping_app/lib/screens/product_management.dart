import 'package:flutter/material.dart';
import 'package:mad1_shopping_app/helpers/dbhelper.dart';
import 'package:mad1_shopping_app/screens/product_add_edit.dart';
import 'package:mad1_shopping_app/widgets/appdrawer.dart';

class ProductManagementScreen extends StatefulWidget {
  const ProductManagementScreen({super.key});

  @override
  State<ProductManagementScreen> createState() =>
      _ProductManagementScreenState();
}

class _ProductManagementScreenState extends State<ProductManagementScreen> {
  // void insertProduct(){
  //   setState(() {

  //   });
  // }

  void openAddEdit() async {
    var result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ProductAddEditScreen()));
    print('RETURNED: $result');
    if (result == true) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Product Management'),
        actions: [
          IconButton(onPressed: () => openAddEdit(), icon: Icon(Icons.add)),
        ],
      ),
      body: FutureBuilder(
        future: DbHelper.queryProductsRaw(),
        builder: (_, snapshot) {
          //snapshot -> data
          //check if data is ready
          if (snapshot.connectionState == .waiting) {
            return Center(child: CircularProgressIndicator());
          }
          print(snapshot.data);
          if (snapshot.data == null) {
            return Center(child: Text('No product found'));
          }
          var productList = snapshot.data!;
          return ListView.builder(
            itemCount: productList.length,
            itemBuilder: (_, index) {
              var product = productList[index];
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) async {
                  int rows = await DbHelper.deleteProduct(
                    product[DbHelper.colPId],
                  );
                  if (rows > 0) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Item deleted')));
                    setState(() {});
                  }
                },
                child: ListTile(
                  title: Text(product[DbHelper.colPName]),
                  subtitle: Text(product[DbHelper.colPDesc]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
