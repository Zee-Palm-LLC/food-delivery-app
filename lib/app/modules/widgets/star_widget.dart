import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';

import '../../data/constants/app_typography.dart';

class MyStarWidget extends StatelessWidget {
  final Color color;
  final String rating;
  const MyStarWidget({
    super.key,
    required this.rating,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 5.w),
        Text(
          rating,
          style: AppTypography.kMedium12.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
