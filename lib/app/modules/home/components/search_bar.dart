import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextField(
        style: AppTypography.kMedium12.copyWith(color: AppColors.kWhiteColor),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.kGreyColor, width: 0.3),
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: 'Try "Burger King"',
          hintStyle:
              AppTypography.kMedium12.copyWith(color: AppColors.kGreyColor),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.kGreyColor,
          ),
          suffixIcon: const Icon(
            Icons.more_horiz_rounded,
            color: AppColors.kGreyColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide:
                const BorderSide(color: AppColors.kGreyColor, width: 0.3),
          ),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        ),
      ),
    );
  }
}
