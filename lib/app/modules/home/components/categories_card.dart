import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';
import 'package:food_delivery/app/models/categories_model.dart';

class CategoriesCard extends StatefulWidget {
  final bool isSelected;
  final CategoriesModel categoriesModel;
  final VoidCallback onTap;

  const CategoriesCard({
    super.key,
    required this.categoriesModel,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: widget.isSelected
              ? AppColors.kPrimaryColor
              : AppColors.kBackgroundColor,
          border: Border.all(
            color: widget.isSelected
                ? AppColors.kPrimaryColor
                : AppColors.kGreyColor,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              widget.categoriesModel.image,
              height: 15.h,
            ),
            SizedBox(width: 5.w),
            Text(
              widget.categoriesModel.title,
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
