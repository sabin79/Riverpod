import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'player_notifier.dart';

class FilterHomePage extends ConsumerWidget {
  const FilterHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(playerNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Search"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) =>
                ref.read(playerNotifierProvider.notifier).filterPlayer(value),
            decoration: const InputDecoration(
                labelText: "Search", suffixIcon: Icon(Icons.search)),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: players,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  players[index]['name'],
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  players[index]['country'],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
