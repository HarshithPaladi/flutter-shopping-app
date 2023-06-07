import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget{
  static const routeName = '/product-detail';
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail Screen'),
      ),
    );
  }
}