import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'navigation_notifier.g.dart';

@riverpod
class NavigationNotifier extends _$NavigationNotifier {
  @override
  build() {
    return 0;
  }

  void setSelectedIndex(int index) {
    state = index;
  }
}
