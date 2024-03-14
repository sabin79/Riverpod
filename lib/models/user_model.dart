import 'package:flutter/foundation.dart';

class UserModel {
  final int id;
  final String email;
  final String firstname;
  final String lasttname;

  final String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.firstname,
    required this.lasttname,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      firstname: json['first_name'] ?? 'First nme',
      lasttname: json['last_name'] ?? 'Last name',
      avatar: json['avatar'] ?? '',
    );
  }
}
