import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interntrial/day_4/dio_request/display_product.dart';
import 'package:interntrial/day_4/dio_request/product.dart';

class ApiCall extends StatelessWidget {
  const ApiCall({super.key});

  Future<List<Product>> fetchApi() async {
    Dio dio = Dio();

    var response = await dio.get('https://fakestoreapi.com/products');
    List<dynamic> responseData = response.data;

    List<Product> products = [];
    for (var data in responseData) {
      products.add(Product.fromJson(data));
    }

    print(products);

    return products;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: fetchApi(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error fetching data'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DisplayProduct(product: snapshot.data![index]);
                  }));
                  print(snapshot.data![index].toString());
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      snapshot.data![index].title,
                    ),
                    subtitle: Text(snapshot.data![index].toString()),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
