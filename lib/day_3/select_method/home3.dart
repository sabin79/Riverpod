import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user.dart';
import 'user_notifiler.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>(
    (ref) => UserNotifier(const User("Sabin", "address")));

class HomePage3 extends ConsumerWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Build method is called");
    //  final user = ref.watch(userProvider);
    final user = ref.watch(userProvider.select((value) => value.name));
    final addres = ref.watch(userProvider.select((value) => value.address));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (value) =>
                  ref.read(userProvider.notifier).UpdateName(value),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onSubmitted: (value) =>
                  ref.read(userProvider.notifier).UpdateAddress(value),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(user),
            const SizedBox(
              height: 5,
            ),
            Text(addres),
          ],
        ),
      ),
    );
  }
}
