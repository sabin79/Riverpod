import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interntrial/models/user_model.dart';

import '../services/service.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
