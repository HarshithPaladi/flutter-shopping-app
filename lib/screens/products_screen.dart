import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Product 1',
      description: 'Description of Product 1',
      price: 9.99,
      imageUrl: 'https://wallpapercave.com/wp/Ex9MlTC.jpg',
    ),
    Product(
      id: '2',
      title: 'Product 2',
      description: 'Description of Product 2',
      price: 19.99,
      imageUrl: 'https://i.pinimg.com/originals/12/fe/9c/12fe9c057e6e028bed15d2e173bddcfa.jpg',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          final product = products[index];
          return ProductItem(
            product.id,
            product.title,
            product.imageUrl,
            product.price,
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
