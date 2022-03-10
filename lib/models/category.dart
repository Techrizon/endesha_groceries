import 'package:flutter/cupertino.dart';

class Category {
  String name;
  String icon;
  Color color;
  String imageName;
  List<Category>? subCategory;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.imageName,
    this.subCategory,
  });
}
