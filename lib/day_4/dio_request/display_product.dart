import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                radius: 100,
                backgroundImage: NetworkImage(
                  product.image.toString(),
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(
              //         product.image.toString(),
              //       ),
              //     ),
              //   ),
              //   child: const Column(
              //     children: [],
              //   ),
              // ),

              const SizedBox(
                height: 25,
                child: Text(
                  "Name :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    " ${product.title.toString()}",
                  )),
              const SizedBox(
                height: 25,
                child: Text(
                  "Price :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ],
                  //  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    product.price.toString(),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
                child: Text(
                  "Description :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(product.description.toString())),
              const SizedBox(
                height: 25,
                child: Text(
                  'Rate :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(child: Text(product.rating.rate.toString()))),
              const SizedBox(
                height: 25,
                child: Text(
                  'Count :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(child: Text(product.rating.count.toString()))),
              const SizedBox(
                height: 25,
                child: Text(
                  'Category :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(child: Text(product.category.toString()))),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
