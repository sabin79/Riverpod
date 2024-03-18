import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_notifier.g.dart';

// class CounterNotifier extends Notifier<int> {
//   @override
//   int build() {
//     return 0;
//   }

//   void increment() {
//     state++;
//   }

//   void decrement() {
//     state--;
//   }
// }

// final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(() {
//   return CounterNotifier();
// });

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
