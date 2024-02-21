import 'package:driver/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../custom_another_option_row.dart';
import '../custom_google_sign_in_button.dart';
import 'custom_sign_up_appbar.dart';
import 'custom_sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const CustomSignUpAppbar(),
        const SizedBox(height: 54),
        Padding(
          padding: const EdgeInsets.fromLTRB(56, 0, 52, 29),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomSignUpForm(),
              const Gap(38),
              CustomGoogleSignInButton(
                buttonText: 'Sign in With Google',
                onPressed: () {},
              ),
              const Gap(19),
              CustomAnotherOptionRow(
                messageText: 'already have an account? ',
                actionText: 'Sign in',
                onTap: () {
                  AppRoutes.router.push(AppRoutes.signInView);
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
