import 'package:flutter/material.dart';

class VariablePage extends StatelessWidget {
  const VariablePage({super.key});

  @override
  Widget build(BuildContext context) {
    var name = 'Voyager I';
    var year = 1977;
    // var antennaDiameter = 3.7;
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
    var images = {
      'tags': ['saturn'],
      'url': ['assects/saturn.png']
    };

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text("Variable Page"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(name),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Birth Date is : $year"),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    images['url']![0],
                    width: 400,
                    height: 300,
                  ),
                  Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      image:
                          DecorationImage(image: AssetImage(images['url']![0])),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(images['url']![0]),
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(images['tags']![0]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
