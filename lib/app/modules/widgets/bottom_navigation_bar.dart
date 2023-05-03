import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/modules/favourite_screen.dart';
import 'package:food_delivery/app/modules/home/home_screen.dart';
import 'package:food_delivery/app/modules/profile_screen.dart';
import 'package:food_delivery/app/modules/search_screen.dart';
import 'package:food_delivery/app/modules/shopping_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const FavouriteScreen(), // index 1
    const SearchScreen(), // index 2
    const ShoppingScreen(), // index 3
    const ProfileScreen(), // index 4
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: FloatingNavbar(
          selectedBackgroundColor: AppColors.kPrimaryColor,
          iconSize: 30.sp,
          backgroundColor: Colors.transparent,
          borderRadius: 100.r,
          itemBorderRadius: 200.r,
          selectedItemColor: AppColors.kWhiteColor,
          unselectedItemColor: AppColors.kWhiteColor,
          items: [
            FloatingNavbarItem(icon: Icons.home_filled),
            FloatingNavbarItem(icon: Icons.favorite_border_outlined),
            FloatingNavbarItem(icon: Icons.search),
            FloatingNavbarItem(icon: Icons.shopping_cart_outlined),
            FloatingNavbarItem(icon: Icons.person_outline),
          ],
          currentIndex: _currentIndex,
          onTap: (int val) => setState(() => _currentIndex = val),
        ),
      ),
    );
  }
}
