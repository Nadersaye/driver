import 'package:driver/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomGoogleSignInButton extends StatelessWidget {
  const CustomGoogleSignInButton(
      {super.key, required this.buttonText, this.onPressed});
  final String buttonText;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        height: 45,
        color: AppColors.buttonBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesGoogleIcon,
                width: 25,
                height: 27,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                buttonText,
                style: AppStyles.styleExtraBold20(context).copyWith(
                  color: AppColors.mainTextColor,
                ),
              ),
            ],
          ),
        ));
  }
}
/*
ext(
"Sign in With Google",
style: const TextStyle(
    color:  const Color(0xff000000),
    fontWeight: FontWeight.w800,
    fontFamily: "Inter",
    fontStyle:  FontStyle.normal,
    fontSize: 20.0
),
textAlign: TextAlign.left                
)

 */