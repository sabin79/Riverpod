import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:interntrial/day_4/dio_request/display_product.dart';
import 'package:interntrial/day_4/dio_request/product.dart';

// ignore: must_be_immutable
class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  List<Product> productlist = [];

  Future<List<Product>> fetchApi() async {
    Dio dio = Dio();

    var response = await dio.get('https://fakestoreapi.com/products');
    List<dynamic> responseData = response.data;

    List<Product> products = [];
    for (var data in responseData) {
      products.add(Product.fromJson(data));
    }

    return products;
  }

  List<Product> api = [];
  List<Product> searchList = [];

  void searchProduct({required String searchKey}) {
    print(searchKey);
    print(searchList.length);
    setState(() {
      if (searchKey.isNotEmpty) {
        setState(() {
          searchList = List.from(api
              .where((element) =>
                  element.title.toLowerCase().contains(searchKey.toLowerCase()))
              .toList());
        });
      } else {
        setState(() {
          searchList = List.from(api);
        });
      }
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      child: FutureBuilder<List<Product>>(
        future: fetchApi(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error fetching data'));
          } else {
            // void filterPlayer(String searchname) {
            //   if (api.isEmpty) {
            //     searchList = api;
            //   } else {
            //     searchList = api
            //         .where((element) => element.title
            //             .toString()
            //             .toLowerCase()
            //             .contains(searchname.toLowerCase()))
            //         .toList();
            //   }
            // }
            if (api.isEmpty) {
              for (var element in snapshot.data!) {
                api.add(element);
                searchList.add(element);
              }
            }

            return Column(
              children: [
                TextField(
                  onChanged: (value) {
                    searchProduct(searchKey: value);
                  },
                  decoration: const InputDecoration(
                    labelText: "Search",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: searchList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DisplayProduct(product: searchList[index]);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 8, left: 8),
                          child: Card(
                            color: Colors.blueGrey.shade100,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  searchList[index].image,
                                ),
                              ),
                              title: Text(
                                searchList[index].title,
                              ),
                              subtitle: Text(searchList[index].toString()),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
