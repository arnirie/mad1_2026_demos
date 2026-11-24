import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad1_shopping_app/screens/accounts.dart';
import 'package:mad1_shopping_app/screens/product_listing.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountsScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
