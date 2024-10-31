import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

// constructor this is inly for data base
class Product {
  final int id;
  final String title, subtitle, description, image, nothing;
  final String oc;
  const Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.oc,
    required this.description,
    required this.nothing,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Aname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "open",
    description: "this is our pahrmacy ",
    nothing: "Pharmacies",
  ),
//list of product
  Product(
    id: 2,
    title: "Bname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "open",
    description: "this is our pahrmacy ",
    nothing: "",
  ),
  Product(
    id: 3,
    title: "Cname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "close",
    description: "this is our pahrmacy ",
    nothing: "",
  ),

  Product(
    id: 4,
    title: "Dname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "close",
    description: "this is our pahrmacy ",
    nothing: "",
  ),

  Product(
    id: 5,
    title: "Ename of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "open",
    description: "this is our pahrmacy ",
    nothing: "",
  ),
  Product(
    id: 6,
    title: "Fname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "open",
    description: "this is our pahrmacy ",
    nothing: "",
  ),
  Product(
    id: 7,
    title: "Fname of the pharmacy ",
    subtitle: "location ",
    image: "assets/images/Cap.png",
    oc: "open",
    description: "this is our pahrmacy ",
    nothing: "",
  ),
];
