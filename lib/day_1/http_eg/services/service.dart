import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';

class ApiServcies {
  String endpoint = 'https://reqres.in/api/users?page=2';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
      // return response.body;
    } else {
      // If the server did not return a 200 OK response,
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiServcies>((ref) => ApiServcies());
