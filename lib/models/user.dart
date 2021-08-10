import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;
  final String password;
  final String profilePhoto;

  User({
    this.profilePhoto,
    this.name,
    @required this.email,
    @required this.password,
  });
}

List<User> users = [
  User(
    email: '',
    password: '',
  ),
];
