import 'package:flutter/material.dart';
import 'package:interntrial/http_eg/models/user_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.e});
  final UserModel e;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' User Detail'),
        elevation: 0.0,
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("${e.firstname}  ${e.lasttname}"),
              //  Text("${e.firstname}${e.lasttname}"),
              const SizedBox(
                height: 10,
              ),
              Text(e.email)
            ],
          ),
        ),
      ),
    );
  }
}
