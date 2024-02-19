import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/images.dart';

class CustomLoginImage extends StatelessWidget {
  const CustomLoginImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.4,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCar2),
            fit: BoxFit.cover,
          ),
          color: AppColors.imageBackgroundColor),
      child: Center(
        child: Text(
          'Driver Safety',
          style: AppStyles.styleRegular40(context),
        ),
      ),
    );
  }
}
