import 'package:driver/core/utils/app_colors.dart';
import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_auth_button.dart';
import '../../../../../../core/widgets/custom_text_formfield.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({super.key});

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
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
            passwordController: _passwordController,
            nameController: _nameController,
          ),
          const Gap(75),
          CustomAuthButton(
            buttonText: "Sign up",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint("Sign up");
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
    required TextEditingController nameController,
  })  : _phoneController = phoneController,
        _passwordController = passwordController,
        _nameController = nameController;

  final AutovalidateMode autovalidateMode;
  final TextEditingController _nameController;
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
            "Name",
            style: AppStyles.styleRegular20(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(8),
          CustomAuthTextformfield(
            autovalidateMode: autovalidateMode,
            prefix: Icons.edit_outlined,
            controller: _nameController,
            width: double.infinity,
            type: TextInputType.name,
            hint: "Enter Your Name",
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return "Please enter name";
              }
              return null;
            },
          ),
          const Gap(8),
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
            hint: "Enter Your phone number",
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return "Please enter phone number";
              }
              return null;
            },
          ),
          const Gap(8),
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
        ],
      ),
    );
  }
}
