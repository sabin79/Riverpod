import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_notifier.dart';

class HomePageNotifier extends ConsumerWidget {
  const HomePageNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifier and NotifierProvider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).increment();
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 16,
                width: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    ref.read(counterNotifierProvider.notifier).decrement();
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
