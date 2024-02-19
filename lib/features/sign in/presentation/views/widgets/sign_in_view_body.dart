import 'package:flutter/material.dart';
import 'custom_login_data.dart';
import 'custom_login_image.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomLoginImage(),
          CustomLoginData(),
        ],
      ),
    );
  }
}
