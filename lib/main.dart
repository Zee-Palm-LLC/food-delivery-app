import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_themes.dart';
import 'package:food_delivery/app/modules/home/home_screen.dart';
import 'package:food_delivery/app/modules/widgets/bottom_navigation_bar.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Themes.primaryTheme,
          home: const CustomBottomNavigationBar(),
        );
      },
    );
  }
}
