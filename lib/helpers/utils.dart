import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        name: "Carnes",
        icon: IconFontHelper.MEATS,
        color: AppColors.MEATS,
        imageName: 'cat1',
        subCategory: [],
      ),
      Category(
        name: "Frutas",
        icon: IconFontHelper.FRUITS,
        color: AppColors.FRUITS,
        imageName: 'cat2',
        subCategory: [],
      ),
      Category(
        name: "Vegetables",
        icon: IconFontHelper.VEGS,
        color: AppColors.VEGS,
        imageName: 'cat2',
        subCategory: [],
      ),
      Category(
        name: "Semillas",
        icon: IconFontHelper.SEEDS,
        color: AppColors.SEEDS,
        imageName: 'cat4',
        subCategory: [],
      ),
      Category(
        name: "Dulces",
        icon: IconFontHelper.PASTRIES,
        color: AppColors.PASTRIES,
        imageName: 'cat5',
        subCategory: [],
      ),
      Category(
        name: "Especies",
        icon: IconFontHelper.SPICES,
        color: AppColors.SPICES,
        imageName: 'cat6',
        subCategory: [],
      ),
    ];
  }
}
