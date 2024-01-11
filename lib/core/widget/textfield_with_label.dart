import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_text_styles.dart';
import 'package:gap/gap.dart';

class TextFieldWithLabel extends StatelessWidget {
  const TextFieldWithLabel(
      {super.key,
      required this.txt,
      this.prefixIcon,
      this.suffixIcon,
      this.initialValue,
      this.controller,
      this.keyboardType,
      this.inputFormatters,
      this.validator,
      this.onTap,
      this.readOnly, this.obscureText});
  final String txt;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final bool? readOnly;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: AppTextStyles.style12.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
          ),
        ),
        const Gap(10),
        TextFormField(
          obscureText: obscureText ?? false,
          readOnly: readOnly ?? false,
          validator: validator,
          keyboardType: keyboardType,
          controller: controller,
          initialValue: initialValue,
          inputFormatters: inputFormatters,
          onTap: onTap,
          decoration: InputDecoration(
            fillColor: AppColors.lightFillColor,
            filled: true,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon == null
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: prefixIcon,
                  ),
            contentPadding: const EdgeInsets.all(20),
            border:
                textFormFieldErrorBorder(borderColor: AppColors.lightFillColor),
            focusedBorder:
                textFormFieldErrorBorder(borderColor: AppColors.lightFillColor),
            enabledBorder:
                textFormFieldErrorBorder(borderColor: AppColors.lightFillColor),
            errorBorder: textFormFieldErrorBorder(borderColor: AppColors.red),
            focusedErrorBorder:
                textFormFieldErrorBorder(borderColor: AppColors.red),
          ),
        )
      ],
    );
  }

  OutlineInputBorder textFormFieldErrorBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
