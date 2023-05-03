import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_assets.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';
import 'package:food_delivery/app/models/categories_model.dart';
import 'package:food_delivery/app/models/food_model.dart';
import 'package:food_delivery/app/models/locations.dart';
import 'package:food_delivery/app/modules/detail_screen/detail_screen.dart';
import 'package:food_delivery/app/modules/home/components/categories_card.dart';
import 'package:food_delivery/app/modules/home/components/items_card.dart';
import 'package:food_delivery/app/modules/home/components/search_bar.dart';
import 'package:food_delivery/app/modules/notification_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedLocation = locationsList[0];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          selectedIndex = 0;
        });
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          title: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    "My location",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.w),
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      value: selectedLocation,
                      onChanged: (value) {
                        setState(() {
                          selectedLocation = value!;
                        });
                      },
                      items: locationsList.map((String location) {
                        return DropdownMenuItem<String>(
                          value: location,
                          child: Text(
                            location,
                            style: AppTypography.kMedium16
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                        );
                      }).toList(),
                      style:
                          AppTypography.kMedium16.copyWith(color: Colors.white),
                      underline: const SizedBox(),
                      isExpanded: true,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.kOrangeColor,
                      ),
                      iconSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: IconButton(
                  onPressed: () {
                    Get.to(() => const NotificationScreen());
                  },
                  icon: const Icon(
                    Icons.notifications_none,
                    color: AppColors.kWhiteColor,
                  )),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text(
                  "Discover good\nfood around you",
                  style: AppTypography.kMedium22
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
              SizedBox(height: 30.h),
              const MySearchBar(),
              SizedBox(height: 20.h),
              SizedBox(
                height: 40.h,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 30.w),
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return CategoriesCard(
                      isSelected: selectedIndex == index,
                      categoriesModel: categoriesList[index],
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    Text(
                      "Hot Deals",
                      style: AppTypography.kBold20
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                    SizedBox(width: 5.w),
                    Image.asset(AppAssets.kFire, height: 25.h)
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 230.h,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 30.w),
                  separatorBuilder: (context, index) => SizedBox(width: 20.w),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return ItemsCard(
                      foodModel: foodList[index],
                      onTap: () => Get.to(
                        () => DetailScreen(foodModel: foodList[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
