import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "homepage_gen.g.dart";

//final nameProvider = Provider<String>((ref) => 'Sabin');

@Riverpod(keepAlive: true)
String name(NameRef ref) {
  return 'Sabin';
}

class HomePageGen extends ConsumerWidget {
  const HomePageGen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name1 = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generator"),
        centerTitle: true,
      ),
      body: Center(child: Text(name1)),
    );
  }
}
