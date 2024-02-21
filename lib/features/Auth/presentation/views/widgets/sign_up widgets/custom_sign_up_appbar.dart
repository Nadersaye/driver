import 'package:driver/core/utils/app_routes.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/images.dart';

class CustomSignUpAppbar extends StatelessWidget {
  const CustomSignUpAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(51, 17, 0, 0),
              height: 250,
              width: double.infinity,
              color: AppColors.primaryColor,
              child: Container(
                  width: 53,
                  height: 55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: AppColors.backgroundColor),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          AppRoutes.router.pop();
                        },
                        icon: SvgPicture.asset(Assets.imagesArrowBack)),
                  )),
            )),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Sign up",
                style: AppStyles.styleSemiBold36(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            )),
      ],
    );
  }
}

//create  a custom shape for the sign up card using Clipper class
class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // i want to draw rectangle
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo((size.width / 2) + 45, (size.height / 4) + 20);
    path.quadraticBezierTo((size.width / 2), (size.height / 4) - 10,
        (size.width / 2) - 45, (size.height / 4) + 20);
    path.lineTo(0, size.height - 50);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
