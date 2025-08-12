import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ??
            (isDark ? AppColors.darkPrimary : AppColors.lightPrimary),
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.lightSurface,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
