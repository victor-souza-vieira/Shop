import 'package:flutter/material.dart';
import 'package:shop/widgets/product_item.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> leadedProducts = DUMMY_PRODUCTS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: leadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(leadedProducts[i]),
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
