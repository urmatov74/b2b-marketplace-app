import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isNew;

  Product({
    @required this.title,
    @required this.description,
    this.images,
    this.colors,
    this.rating = 0.0,
    @required this.price,
    this.isFavourite = false,
    this.isNew = false,
  });
}

List<Product> demoProducts = [
  Product(
    images: ["assets/img/productImg/airjordan.jpg"],
    colors: [
      Colors.red,
    ],
    title: "Air Jordan",
    price: 55.0,
    description: "description",
    rating: 3.3,
    isFavourite: true,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/airjordan2.jpg"],
    colors: [
      Colors.blue,
    ],
    title: "Nike Jordan",
    price: 65.0,
    description: "description",
    rating: 4.2,
    isFavourite: false,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/jordan.jpg"],
    colors: [
      Colors.blue,
    ],
    title: "Nike",
    price: 25.0,
    description: "description",
    rating: 1.2,
    isFavourite: true,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/lines3.jpg"],
    colors: [
      Colors.blue,
      Colors.red,
    ],
    title: "Adidas",
    price: 25.0,
    description: "description",
    rating: 1.2,
    isFavourite: true,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/airjordan.jpg"],
    colors: [
      Colors.red,
    ],
    title: "Air Jordan",
    price: 55.0,
    description: "description",
    rating: 3.3,
    isFavourite: true,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/airjordan2.jpg"],
    colors: [
      Colors.blue,
    ],
    title: "Nike Jordan",
    price: 65.0,
    description: "description",
    rating: 4.2,
    isFavourite: false,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/jordan.jpg"],
    colors: [
      Colors.blue,
    ],
    title: "Nike",
    price: 25.0,
    description: "description",
    rating: 1.2,
    isFavourite: true,
    isNew: true,
  ),
  Product(
    images: ["assets/img/productImg/lines3.jpg"],
    colors: [
      Colors.blue,
      Colors.red,
    ],
    title: "Adidas",
    price: 25.0,
    description: "description",
    rating: 1.2,
    isFavourite: true,
    isNew: true,
  ),
];
