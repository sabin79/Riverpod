import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Navigationbar extends ConsumerWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Navigation bar"),
      ),
    );
  }
}
