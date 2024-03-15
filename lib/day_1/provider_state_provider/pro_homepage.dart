import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProHomePage extends StatelessWidget {
  const ProHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("provider or State_Provider"),
      ),
      body: const SelectedButton(),
    );
  }
}

final isreadProvider = Provider<bool>((ref) {
  final color = ref.watch(selectedButtonprovider);
  return color == 'Red';
});
//can read from outside but can't write from outside
final selectedButtonprovider = StateProvider<String>((ref) => '');

//same as provider but more freedom and more ability to change
class SelectedButton extends ConsumerWidget {
  const SelectedButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref /* context of  riverpod*/) {
    final isRed = ref.watch(isreadProvider);
    final selectedButton = ref.watch(selectedButtonprovider);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(selectedButton),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () =>
                ref.read(selectedButtonprovider.notifier).state = 'Red',
            child: const Text("Red"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () =>
                ref.read(selectedButtonprovider.notifier).state = 'blue',
            child: const Text("Blue"),
          ),
          const SizedBox(
            height: 10,
          ),
          isRed ? const Text("Color is Red") : const Text("Color is blue")
        ],
      ),
    );
  }
}
