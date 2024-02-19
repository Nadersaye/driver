import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_do_not_have_account_row.dart';
import 'custom_google_sign_in_button.dart';
import 'custom_login_form.dart';

class CustomLoginData extends StatelessWidget {
  const CustomLoginData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(56, 37, 52, 29),
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: AppColors.primaryColor,
                  offset: Offset(0, 8),
                  blurRadius: 38,
                  spreadRadius: 0),
              BoxShadow(
                  color: AppColors.shadowColor,
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0)
            ],
            color: AppColors.secondBackgroundColor),
        child: Column(
          children: [
            Text(
              "Sign in ",
              style: AppStyles.styleSemiBold36(context).copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 54),
            const CustomLoginForm(),
            const Gap(26),
            CustomGoogleSignInButton(
              buttonText: 'Sign in With Google',
              onPressed: () {},
            ),
            const Gap(19),
            const CustomAnotherOptionRow(
              messageText: 'don’t have an account? ',
              actionText: 'Sign up',
            ),
          ],
        ));
  }
}
