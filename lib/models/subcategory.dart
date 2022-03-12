import 'package:endesha_groceries/models/category.dart';
import 'dart:ui';

import 'package:endesha_groceries/models/category_part.dart';

class SubCategory extends Category {
  List<CategoryPart> parts;

  SubCategory({
    required this.parts,
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
