import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_colors.dart';
import 'package:provider/provider.dart';
import '../../core/theme/theme_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isUser;
  final bool isBackAction;

  const CustomAppBar({
    super.key,
    required this.title,
    this.isUser = false,
    this.isBackAction = false,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final themeIcon = isDarkMode ? Icons.dark_mode : Icons.light_mode;

    return AppBar(
      automaticallyImplyLeading: false,
      leading:
          isBackAction
              ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color:
                      isDarkMode
                          ? AppColors.lightSurface
                          : AppColors.darkSurface,
                ),
                onPressed: () => Navigator.pop(context),
              )
              : null,
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
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color:
                      isDarkMode
                          ? AppColors.lightSurface
                          : AppColors.darkSurface,
                  width: 1,
                ),
              ),
              child: Icon(
                themeIcon,
                color:
                    isDarkMode ? AppColors.lightSurface : AppColors.darkSurface,
                size: 18,
              ),
            ),
          ),
        ),
        if (isUser)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              radius: 16,
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
