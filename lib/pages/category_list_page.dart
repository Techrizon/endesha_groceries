import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/helpers/utils.dart';
import 'package:endesha_groceries/models/category.dart';
import 'package:endesha_groceries/pages/selected_category_page.dart';
import 'package:endesha_groceries/widgets/category_bottom_bar.dart';
import 'package:endesha_groceries/widgets/category_card.dart';
import 'package:endesha_groceries/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryListPage extends StatelessWidget {
  CategoryListPage({Key? key}) : super(key: key);

  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Select una categoria",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 120),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectedCategoryPage(
                              selectedCategory: this.categories[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CategoryBottomBar(),
          ),
        ],
      ),
    );
  }
}
