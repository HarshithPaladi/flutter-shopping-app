import 'package:flutter/material.dart';
import 'screens/product_detail.dart';
import 'screens/products_screen.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsScreen(),
      routes: {
        ProductDetail.routeName: (ctx) => ProductDetail(),
      },
    );
  }
}
