import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/product_listing.dart';

class AppDrawer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Container(child: Text('Shopping App'))),
          ListTile(
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => ProductListingScreen())),
            title: Text('Product List'),
            leading: FaIcon(FontAwesomeIcons.list),
          ),
          ListTile(title: Text('Accounts'), leading: Icon(Icons.person)),
          ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
