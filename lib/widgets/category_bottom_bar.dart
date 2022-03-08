import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: const Icon(
                  Icons.pin_drop,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.MAIN_COLOR,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
