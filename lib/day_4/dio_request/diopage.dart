import 'package:flutter/material.dart';
import 'package:interntrial/day_4/dio_request/api_request.dart';

class DioPage extends StatelessWidget {
  const DioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: const Text('Api development'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 5,
      ),
      body: const ApiCall(),
    );
  }
}
