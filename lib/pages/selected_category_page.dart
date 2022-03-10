import 'package:endesha_groceries/models/category.dart';
import 'package:endesha_groceries/widgets/categoryicon.dart';
import 'package:endesha_groceries/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({
    required this.selectedCategory,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory.color,
                  iconName: this.selectedCategory.icon,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  this.selectedCategory.name,
                  style: TextStyle(
                    color: this.selectedCategory.color,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  this.selectedCategory.subCategory!.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        //TODO: navigate to the details page
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/' +
                                    this
                                        .selectedCategory
                                        .subCategory![index]
                                        .imageName +
                                    '.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              this.selectedCategory.subCategory![index].name,
                              style: TextStyle(
                                  color: this
                                      .selectedCategory
                                      .subCategory![index]
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
