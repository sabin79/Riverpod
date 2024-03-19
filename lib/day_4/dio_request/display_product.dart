import 'package:flutter/material.dart';

import 'product.dart';

class DisplayProduct extends StatelessWidget {
  final Product product;
  const DisplayProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(product.title.toString()),
            Text(product.price.toString()),
            Text(product.description.toString()),
            Text(product.rating.rate.toString()),
            Text(product.rating.count.toString()),
            Text(product.category.toString()),
          ],
        ),
      ),
    );
  }
}
