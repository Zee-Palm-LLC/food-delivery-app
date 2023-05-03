import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_assets.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';
import 'package:food_delivery/app/models/food_model.dart';
import 'package:food_delivery/app/modules/detail_screen/components/counter_widget.dart';
import 'package:food_delivery/app/modules/detail_screen/components/ingredients_container.dart';
import 'package:food_delivery/app/modules/notification_screen.dart';
import 'package:food_delivery/app/modules/widgets/appbar_button.dart';
import 'package:food_delivery/app/modules/widgets/star_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DetailScreen extends StatefulWidget {
  final FoodModel foodModel;

  const DetailScreen({super.key, required this.foodModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundButton(
              icon: Icons.arrow_back_ios_new,
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Get.back();
              },
            ),
            Text(
              "Detail",
              style: AppTypography.kMedium16
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            RoundButton(
              icon: Icons.favorite_border_outlined,
              onTap: () {
                Get.to(const NotificationScreen());
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(widget.foodModel.detailImage, height: 200.h),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyStarWidget(
                          rating: widget.foodModel.rating,
                          color: AppColors.kGreyColor,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          widget.foodModel.title,
                          style: AppTypography.kMedium20
                              .copyWith(color: AppColors.kWhiteColor),
                        ),
                      ],
                    ),
                  ),
                  const MyCounterWidget()
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Text(
                "Ingredients",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: SizedBox(
                height: 70.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return IngredientsContainer(
                      foodModel: foodList[index],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "Description",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                widget.foodModel.description,
                style: AppTypography.kMedium10
                    .copyWith(color: AppColors.kGreyColor),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 100.h)
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        height: 80.h,
        color: AppColors.kBackgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ ${widget.foodModel.price}",
              style: AppTypography.kMedium26
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                  backgroundColor: AppColors.kPrimaryColor),
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: AppTypography.kMedium18
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
