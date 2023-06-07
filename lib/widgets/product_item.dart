import 'package:flutter/material.dart';

import '../screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetail.routeName, arguments: id);
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
