import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';
import 'package:food_delivery/app/models/food_model.dart';

class IngredientsContainer extends StatelessWidget {
  final FoodModel foodModel;
  const IngredientsContainer({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGreyColor),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(foodModel.ingredientsImage, height: 20.h),
          Text(
            foodModel.ingredients,
            style:
                AppTypography.kMedium10.copyWith(color: AppColors.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
