import 'package:endesha_groceries/models/category.dart';
import 'package:endesha_groceries/widgets/categoryicon.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;

  CategoryCard({
    required this.category,
    required this.onCardClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 150,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/' + category.imageName + '.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CategoryIcon(
                      color: this.category.color,
                      iconName: this.category.icon,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      this.category.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
