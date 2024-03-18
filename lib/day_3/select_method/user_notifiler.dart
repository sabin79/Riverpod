import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user.dart';

class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void UpdateName(String newValue) {
    state = state.copyWith(name: newValue);
  }

  void UpdateAddress(String newValue) {
    state = state.copyWith(address: newValue);
  }
}
