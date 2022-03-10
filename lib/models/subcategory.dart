import 'package:endesha_groceries/models/category.dart';
import 'dart:ui';

class SubCategory extends Category {
  SubCategory({
    required String name,
    required String icon,
    required Color color,
    required String imageName,
  }) : super(
          name: name,
          icon: icon,
          color: color,
          imageName: imageName,
        );
}
