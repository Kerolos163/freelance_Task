import 'package:flutter/material.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.color, required this.label, this.onPressed});
  final Color? color;
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? AppColors.primary,
        ),
        child: Text(
          label,
          style: AppTextStyles.style20.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
