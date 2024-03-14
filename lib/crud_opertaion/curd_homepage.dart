import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numbersProvider =
    StateNotifierProvider<NumberNotifier, List<String>>((ref) {
  return NumberNotifier();
});

class NumberNotifier
    extends StateNotifier /* stateprovider simple type bool int String StateNotifier  is used for complex type of object ListString ,list of map */ <
        List<String>> {
  NumberNotifier() : super(['number 12', 'number 30']);

  void add(String number) {
    state = [...state, number];
  }

  void remove(String number) {
    state = [...state.where((element) => element != number)];
  }

  void update(String number, String updatedNumber) {
    final updatedList = <String>[];
    for (var i = 0; i < state.length; i++) {
      if (state[i] == number) {
        updatedList.add(updatedNumber);
      } else {
        updatedList.add(state[i]);
      }
    }
    state = updatedList;
  }
}

class CurdHomePage extends ConsumerWidget {
  const CurdHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numbers = ref.watch(numbersProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Curd Operation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(numbersProvider.notifier)
              .add('number ${Random().nextInt(100)}');
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: numbers
              .map((e) => GestureDetector(
                    onLongPress: () {
                      ref
                          .read(numbersProvider.notifier)
                          .update(e, '$e ${Random().nextInt(1000)}');
                    },
                    onTap: () {
                      ref.read(numbersProvider.notifier).remove(e);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(e),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
