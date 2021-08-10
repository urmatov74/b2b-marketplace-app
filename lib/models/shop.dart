import 'package:b2b_marketplace/models/user.dart';
import 'package:flutter/material.dart';

class Shop {
  final String title, description;
  final String photo;
  final double rating;
  final List<User> subscribers;

  Shop(
    this.subscribers, {
    @required this.title,
    @required this.description,
    @required this.photo,
    this.rating = 0.0,
  });
}
