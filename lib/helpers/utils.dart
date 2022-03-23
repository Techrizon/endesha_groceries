import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/models/category.dart';
import 'package:endesha_groceries/models/category_part.dart';
import 'package:endesha_groceries/models/onboarding_content.dart';
import 'package:endesha_groceries/models/subcategory.dart';

class Utils {
  static List<OnBoardingContent> getOnboarding() {
    return [
      OnBoardingContent(
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        image: 'onboard1',
      ),
      OnBoardingContent(
        message: "Proin bibendum dolor nisi, nec tempor purus aliquam quis.",
        image: 'onboard2',
      ),
      OnBoardingContent(
        message: "Vestibulum id mi et lectus dictum volutpat non quis urna.",
        image: 'onboard3',
      ),
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      Category(
        name: "Carnes",
        icon: IconFontHelper.MEATS,
        color: AppColors.MEATS,
        imageName: 'cat1',
        subCategory: [
          SubCategory(
            name: "Cerdo",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_1",
            parts: [
              CategoryPart(
                name: 'Jamon',
                imageName: 'cat1_1_p1',
                isSeleceted: false,
              ),
              CategoryPart(
                name: 'Patas',
                imageName: 'cat1_1_p2',
                isSeleceted: false,
              ),
              CategoryPart(
                name: 'Tocineta',
                imageName: 'cat1_1_p3',
                isSeleceted: false,
              ),
              CategoryPart(
                name: 'Lomo',
                imageName: 'cat1_1_p4',
                isSeleceted: false,
              ),
              CategoryPart(
                name: 'Costillas',
                imageName: 'cat1_1_p5',
                isSeleceted: false,
              ),
              CategoryPart(
                name: 'Panza',
                imageName: 'cat1_1_p6',
                isSeleceted: false,
              ),
            ],
          ),
          SubCategory(
            name: "Vaca",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_2",
            parts: [],
          ),
          SubCategory(
            name: "Gallina",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_3",
            parts: [],
          ),
          SubCategory(
            name: "Pavo",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_4",
            parts: [],
          ),
          SubCategory(
            name: "Chivo",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_5",
            parts: [],
          ),
          SubCategory(
            name: "Conejo",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            imageName: "cat1_6",
            parts: [],
          )
        ],
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
