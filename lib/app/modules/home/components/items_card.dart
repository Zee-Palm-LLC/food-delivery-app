import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';
import 'package:food_delivery/app/models/food_model.dart';
import 'package:food_delivery/app/modules/widgets/star_widget.dart';

class ItemsCard extends StatefulWidget {
  final VoidCallback onTap;
  final FoodModel foodModel;

  const ItemsCard({
    super.key,
    required this.foodModel,
    required this.onTap,
  });

  @override
  State<ItemsCard> createState() => _ItemsCardState();
}

class _ItemsCardState extends State<ItemsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 200.w,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          image: DecorationImage(
              image: AssetImage(widget.foodModel.image), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyStarWidget(
              rating: widget.foodModel.rating,
              color: AppColors.kWhiteColor,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 40.w),
                              child: Text(
                                widget.foodModel.title,
                                style: AppTypography.kMedium10
                                    .copyWith(color: AppColors.kWhiteColor),
                              ),
                            ),
                          ),
                          const Icon(Icons.favorite,
                              color: AppColors.kPrimaryColor),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: AppTypography.kMedium12
                                .copyWith(color: AppColors.kPrimaryColor),
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            widget.foodModel.price,
                            style: AppTypography.kBold16
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
