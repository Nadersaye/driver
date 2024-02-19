import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.buttonText, this.onPressed});
  final String buttonText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        height: 45,
        color: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          buttonText,
          style: AppStyles.styleExtraBold20(context).copyWith(
            color: AppColors.buttonTextColor,
          ),
        ));
  }
}
