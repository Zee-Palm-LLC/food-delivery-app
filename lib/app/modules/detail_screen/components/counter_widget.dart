import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';
import 'package:food_delivery/app/data/constants/app_typography.dart';

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  State<MyCounterWidget> createState() => MyCounterWidgetState();
}

class MyCounterWidgetState extends State<MyCounterWidget> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGreyColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              if (_count > 1) {
                setState(() {
                  _count--;
                });
              }
            },
            icon: const Icon(Icons.remove, color: AppColors.kWhiteColor),
          ),
          Text(
            _count.toString().padLeft(2),
            style:
                AppTypography.kMedium14.copyWith(color: AppColors.kWhiteColor),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _count++;
              });
            },
            icon: const Icon(Icons.add, color: AppColors.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
