import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod/riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final helloWorldProvider = Provider((ref) => "Hello, World!");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Riverpod Hello World',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Riverpod Hello World'),
          ),
          body: Center(
            child: Consumer(
              builder: (context, watch, _) {
                final helloWorld = watch(helloWorldProvider);
                return Text(
                  helloWorld,
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
