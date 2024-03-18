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
      home: Navigationbar(),
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
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_max_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.browse_gallery),
            icon: Icon(Icons.browse_gallery_outlined),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
