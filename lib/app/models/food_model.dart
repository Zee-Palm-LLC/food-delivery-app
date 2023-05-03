import 'package:food_delivery/app/data/constants/app_assets.dart';

class FoodModel {
  final String title;
  final String image;
  final String detailImage;
  final String price;
  final String rating;
  final String description;
  final String ingredients;
  final String ingredientsImage;

  FoodModel({
    required this.title,
    required this.image,
    required this.detailImage,
    required this.price,
    required this.rating,
    required this.description,
    required this.ingredients,
    required this.ingredientsImage,
  });
}

List foodList = [
  FoodModel(
    title: "Bowl of Porridge with Fruits",
    description:
        "Bowl of Porridge with Fruits is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood2,
    detailImage: AppAssets.kDetailFood1,
    price: "9.67",
    rating: "4.5",
    ingredients: "Spinach",
    ingredientsImage: AppAssets.kVegetable1,
  ),
  FoodModel(
    title: "Egg Delight with Vegetables",
    description:
        "Egg Delight with Vegetables is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood1,
    detailImage: AppAssets.kDetailFood2,
    price: "8.00",
    rating: "4.7",
    ingredients: "Chicken",
    ingredientsImage: AppAssets.kChicken,
  ),
  FoodModel(
    title: "Fruits Salad with Honey",
    description:
        "Fruits Salad with Honey is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood3,
    detailImage: AppAssets.kDetailFood3,
    price: "5.48",
    rating: "4.3",
    ingredients: "Mushroom",
    ingredientsImage: AppAssets.kVegetable2,
  ),
  FoodModel(
    title: "Bowl of Porridge with Fruits",
    description:
        "Bowl of Porridge with Fruits is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood2,
    detailImage: AppAssets.kDetailFood1,
    price: "9.67",
    rating: "4.5",
    ingredients: "Onion",
    ingredientsImage: AppAssets.kVegetable3,
  ),
  FoodModel(
    title: "Egg Delight with Vegetables",
    description:
        "Egg Delight with Vegetables is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood1,
    detailImage: AppAssets.kDetailFood2,
    price: "8.00",
    rating: "4.7",
    ingredients: "Chicken",
    ingredientsImage: AppAssets.kChicken,
  ),
  FoodModel(
    title: "Fruits Salad with Honey",
    description:
        "Fruits Salad with Honey is a hearty “main dish” kind of salad with bold flavors. Chicken breasts are marinated in cilantro lime goodness, then seared until golden and added to a bed of romaine lettuce along with sweet corn, black beans, and grape tomatoes. A generous drizzle of creamy avocado dressing ties it all together.",
    image: AppAssets.kFood3,
    detailImage: AppAssets.kDetailFood3,
    price: "5.48",
    rating: "4.3",
    ingredients: "Cookies",
    ingredientsImage: AppAssets.kAllFood,
  ),
];
