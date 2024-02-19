import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_auth_button.dart';
import 'custom_text_formfield.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLoginFormInputData(
              autovalidateMode: autovalidateMode,
              phoneController: _phoneController,
              passwordController: _passwordController),
          CustomAuthButton(
            buttonText: "Sign in",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint("Sign in");
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

class CustomLoginFormInputData extends StatelessWidget {
  const CustomLoginFormInputData({
    super.key,
    required this.autovalidateMode,
    required TextEditingController phoneController,
    required TextEditingController passwordController,
  })  : _phoneController = phoneController,
        _passwordController = passwordController;

  final AutovalidateMode autovalidateMode;
  final TextEditingController _phoneController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "phone number",
            style: AppStyles.styleRegular20(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(8),
          CustomAuthTextformfield(
            autovalidateMode: autovalidateMode,
            prefix: Icons.phone_android_outlined,
            controller: _phoneController,
            width: double.infinity,
            type: TextInputType.phone,
            hint: "Enter phone number",
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return "Please enter phone number";
              }
              return null;
            },
          ),
          const Gap(13),
          Text(
            "Password",
            style: AppStyles.styleRegular20(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(8),
          CustomAuthTextformfield(
            autovalidateMode: autovalidateMode,
            prefix: Icons.lock_outline,
            controller: _passwordController,
            width: double.infinity,
            type: TextInputType.visiblePassword,
            hint: "Enter Your Password",
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return "Please Enter Your Password";
              } else {
                return null;
              }
            },
          ),
          const Gap(11),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    debugPrint("Forgot Password");
                  },
                text: "Forgot Password? ",
                style: AppStyles.styleMedium16(context).copyWith(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          const Gap(26),
        ],
      ),
    );
  }
}
