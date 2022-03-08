import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/helpers/utils.dart';
import 'package:endesha_groceries/models/category.dart';
import 'package:endesha_groceries/pages/selected_category_page.dart';
import 'package:endesha_groceries/widgets/category_bottom_bar.dart';
import 'package:endesha_groceries/widgets/category_card.dart';
import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryListPage extends StatelessWidget {
  CategoryListPage({Key? key}) : super(key: key);

  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: IconFont(
          iconName: IconFontHelper.LOGO,
          color: AppColors.MAIN_COLOR,
          size: 40,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.all(10.0),
            child: ClipOval(
              child: Image.asset('assets/images/avatar.png'),
            ),
          )
        ],
      ),
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
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SelectedCategoryPage(),
                          ),
                          (Route<dynamic> route) => false,
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
