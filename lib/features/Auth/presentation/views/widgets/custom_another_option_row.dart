import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomAnotherOptionRow extends StatelessWidget {
  const CustomAnotherOptionRow(
      {super.key,
      required this.messageText,
      required this.actionText,
      this.onTap});
  final String messageText;
  final String actionText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          style: AppStyles.styleMedium16(context).copyWith(
            fontWeight: FontWeight.w700,
          ),
          text: messageText),
      TextSpan(
          recognizer: TapGestureRecognizer()..onTap = onTap,
          style: AppStyles.styleMedium16(context).copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
          ),
          text: actionText)
    ]));
  }
}
