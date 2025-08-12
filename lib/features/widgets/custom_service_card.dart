import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_colors.dart';

class CustomServiceCard extends StatelessWidget {
  final IconData iconData;
  final String title;

  const CustomServiceCard({
    super.key,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final cardColor = isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final titleColor = isDark ? AppColors.darkText : AppColors.lightText;
    final iconColor = isDark ? AppColors.darkPrimary : AppColors.lightPrimary;

    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Container(
        height: 140,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData, color: iconColor, size: 24),
            const SizedBox(height: 8),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
