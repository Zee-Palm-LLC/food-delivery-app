import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/constants/app_colors.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const RoundButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.kWhiteColor,
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: AppColors.kBlackColor),
      ),
    );
  }
}
