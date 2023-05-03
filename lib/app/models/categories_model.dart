import 'package:food_delivery/app/data/constants/app_assets.dart';

class CategoriesModel {
  final String title;
  final String image;

  CategoriesModel({
    required this.title,
    required this.image,
  });
}

List categoriesList = [
  CategoriesModel(
    title: "All Food",
    image: AppAssets.kAllFood,
  ),
  CategoriesModel(
    title: "Chicken",
    image: AppAssets.kChicken,
  ),
  CategoriesModel(
    title: "Burger",
    image: AppAssets.kBurger,
  )
];
