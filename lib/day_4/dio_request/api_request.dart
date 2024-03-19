import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interntrial/day_4/dio_request/display_product.dart';
import 'package:interntrial/day_4/dio_request/product.dart';

class ApiCall extends StatelessWidget {
  const ApiCall({super.key});

  Future<List<Product>> fetchApi() async {
    Dio dio = Dio();

    var response = await dio.get('https://fakestoreapi.com/products');
    final List<dynamic> responseData = response.data;
    List<Product> products =
        responseData.map(([json]) => Product.fromJson(json)).toList();

    print(response.data.toString());

    return products;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: fetchApi(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayProduct(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(snapshot.data![index].title),
                      subtitle: Text(snapshot.data![index].toString()),
                    ),
                  ),
                );
              });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
