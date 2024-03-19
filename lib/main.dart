import 'package:flutter/material.dart';
import 'package:interntrial/day_1/crud_opertaion/curd_homepage.dart';
import 'package:interntrial/day_1/http_eg/home/my_home_page.dart';
import 'package:interntrial/day_1/provider_state_provider/pro_homepage.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'day_2/variable.dart';
import 'day_3/Navigation_bar/navigationbar.dart';
import 'day_3/generator/homepage_gen.dart';
import 'day_3/notifier_notifierprovider/home_notifier.dart';
import 'day_3/select_method/home3.dart';
import 'day_4/filter_search/filter_search.dart';

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
      // title: 'Intern Day 1 ',
      home: FilterHomePage(),
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
