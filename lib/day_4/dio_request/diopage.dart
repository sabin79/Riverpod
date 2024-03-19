import 'package:flutter/material.dart';
import 'package:interntrial/day_4/dio_request/api_request.dart';

class DioPage extends StatelessWidget {
  const DioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api development'),
        centerTitle: true,
        elevation: 5,
      ),
      body: const ApiCall(),
    );
  }
}
