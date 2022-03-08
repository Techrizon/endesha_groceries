import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;
  CategoryIcon({
    required this.color,
    required this.iconName,
    this.size = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: this.color,
        padding: const EdgeInsets.all(10),
        child: IconFont(
          color: Colors.white,
          iconName: this.iconName,
          size: this.size,
        ),
      ),
    );
  }
}
