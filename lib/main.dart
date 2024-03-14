import 'package:flutter/material.dart';
import 'package:interntrial/http_eg/home/my_home_page.dart';
import 'package:interntrial/provider_state_provider/pro_homepage.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern Day 1 ',
      home: ProHomePage(),
    );
  }
}

final helloStateProvider = Provider((ref) => "Hello, World!");

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var value = ref.watch(helloStateProvider);
    return Scaffold(
      body: Center(
        child: Text(value),
      ),
    );
  }
}
