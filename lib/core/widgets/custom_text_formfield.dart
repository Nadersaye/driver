import 'package:driver/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomAuthTextformfield extends StatelessWidget {
  const CustomAuthTextformfield(
      {super.key,
      required this.controller,
      required this.type,
      this.validate,
      this.onSubmit,
      this.onChanged,
      required this.hint,
      this.prefix,
      this.onTap,
      this.prefixPressed,
      this.radius = 5.0,
      this.width = double.infinity,
      this.autovalidateMode});
  final TextEditingController controller;
  final TextInputType type;
  final FormFieldValidator<String>? validate;
  final ValueChanged<String>? onSubmit;
  final Function(String)? onChanged;
  final String hint;
  final IconData? prefix;
  final GestureTapCallback? onTap;
  final VoidCallback? prefixPressed;
  final double radius;
  final double width;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      cursorColor: AppColors.primaryColor,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      //textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (s) {
        debugPrint(s);
      },
      onTap: onTap,
      onChanged: onChanged,
      validator: validate,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: const BorderSide(color: AppColors.imageBackgroundColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        /*enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: const BorderSide(color: AppColors.oceanGreen),
        ),*/
        hintText: hint,
        hintStyle: AppStyles.styleMedium16(context),
        prefixIcon: IconButton(
            onPressed: prefixPressed,
            icon: Icon(
              prefix,
              color: AppColors.hintTextColor,
            )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: const BorderSide(color: Colors.red),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      ),
    );
  }
}
