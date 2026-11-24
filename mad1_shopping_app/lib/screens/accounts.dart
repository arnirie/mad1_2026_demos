import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mad1_shopping_app/screens/product_listing.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/appdrawer.dart';

class AccountsScreen extends StatefulWidget {
  AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  // late final SharedPreferences prefs;
  final prefs = SharedPreferencesAsync();

  var nameCtrl = TextEditingController();
  var addressCtrl = TextEditingController();

  void saveData() async {
    await prefs.setString("name", nameCtrl.text);
    await prefs.setString("address", addressCtrl.text);
    print("saved successfully");
  }

  void fetchData() async {
    //init prefs
    // prefs = await SharedPreferences.getInstance();
    nameCtrl.text = await prefs.getString("name") ?? "";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('My Account'),
        actions: [IconButton(onPressed: saveData, icon: Icon(Icons.save))],
      ),
      body: ListView(
        children: [
          TextField(controller: nameCtrl),
          TextField(controller: addressCtrl),
        ],
      ),
    );
  }
}
