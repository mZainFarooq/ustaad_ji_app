import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final activeColor = isDark ? AppColors.darkPrimary : AppColors.lightPrimary;
    final inactiveColor = isDark ? AppColors.darkTextSecondary : Colors.grey;

    final items = [
      {'icon': Icons.home, 'label': 'Home', 'route': '/home'},
      {
        'icon': Icons.miscellaneous_services,
        'label': 'Services',
        'route': '/services',
      },
      {
        'icon': Icons.report_problem,
        'label': 'My Complaints',
        'route': '/complaints',
      },
      {'icon': Icons.person, 'label': 'Profile', 'route': '/profile'},
    ];

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black54 : Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final color = currentIndex == index ? activeColor : inactiveColor;
          return GestureDetector(
            onTap: () => onTap(index),
            behavior: HitTestBehavior.opaque,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(items[index]['icon'] as IconData, color: color),
                const SizedBox(height: 4),
                Text(
                  items[index]['label'] as String,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight:
                        currentIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
