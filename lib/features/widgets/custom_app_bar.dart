import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_colors.dart';
import 'package:provider/provider.dart';
import '../../core/theme/theme_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isUser;

  const CustomAppBar({super.key, required this.title, this.isUser = false});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final themeIcon = isDarkMode ? Icons.dark_mode : Icons.light_mode;

    return AppBar(
      title: Text(title),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              themeProvider.toggleTheme(!isDarkMode);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightPrimary,
              ),
              child: Icon(
                themeIcon,
                color: AppColors.lightBackground,
                size: 20,
              ),
            ),
          ),
        ),
        // if (isUser) ...[
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //     child: CircleAvatar(
        //       backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
        //       radius: 16,
        //     ),
        //   ),
        // ],
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
