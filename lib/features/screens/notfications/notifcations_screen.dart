import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_colors.dart';
import 'package:flutter_app/features/widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final List<Map<String, String>> notifications = [
    {
      "title": "Electrical Service",
      "message": "Electrical service completed. Payment received successfully.",
      "time": "2 min ago",
      "icon": "electrical_services",
    },
    {
      "title": "AC Repair",
      "message": "Your AC repair service has been scheduled.",
      "time": "30 min ago",
      "icon": "ac_unit",
    },
    {
      "title": "Carpentry",
      "message": "Carpentry work completed. Please review the service.",
      "time": "1 hour ago",
      "icon": "handyman",
    },
    {
      "title": "Plumbing",
      "message": "Plumbing service is on the way to your location.",
      "time": "Yesterday",
      "icon": "plumbing",
    },
    {
      "title": "Cleaning",
      "message": "Cleaning service completed successfully.",
      "time": "2 days ago",
      "icon": "cleaning_services",
    },
    {
      "title": "Handyman",
      "message": "Handyman service request accepted.",
      "time": "3 days ago",
      "icon": "home_repair_service",
    },
    {
      "title": "Plumbing",
      "message": "Plumbing service is on the way to your location.",
      "time": "Yesterday",
      "icon": "plumbing",
    },
    {
      "title": "Cleaning",
      "message": "Cleaning service completed successfully.",
      "time": "2 days ago",
      "icon": "cleaning_services",
    },
    {
      "title": "Handyman",
      "message": "Handyman service request accepted.",
      "time": "3 days ago",
      "icon": "home_repair_service",
    },
    {
      "title": "Handyman",
      "message": "Handyman service request accepted.",
      "time": "3 days ago",
      "icon": "home_repair_service",
    },
    {
      "title": "Plumbing",
      "message": "Plumbing service is on the way to your location.",
      "time": "Yesterday",
      "icon": "plumbing",
    },
    {
      "title": "Cleaning",
      "message": "Cleaning service completed successfully.",
      "time": "2 days ago",
      "icon": "cleaning_services",
    },
    {
      "title": "Handyman",
      "message": "Handyman service request accepted.",
      "time": "3 days ago",
      "icon": "home_repair_service",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final cardColor = isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final titleColor = isDark ? AppColors.darkText : AppColors.lightText;
    final subtitleColor =
        isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;
    final dateColor = subtitleColor;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Notifications', isUser: true),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(12),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final notif = notifications[index];
          return Container(
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    isDark
                        ? AppColors.darkTextSecondary.withValues(alpha: 0.3)
                        : Colors.grey.shade300,
              ),
              boxShadow: [
                if (!isDark)
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor:
                      isDark
                          ? AppColors.darkPrimary.withValues(alpha: 0.15)
                          : AppColors.lightPrimary.withValues(alpha: 0.15),
                  child: Icon(
                    Icons.notifications,
                    color:
                        isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              notif["title"] ?? "",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: titleColor,
                              ),
                            ),
                          ),
                          Text(
                            notif["time"] ?? "",
                            style: TextStyle(fontSize: 12, color: dateColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        notif["message"] ?? "",
                        style: TextStyle(fontSize: 14, color: subtitleColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor:
          isDark ? AppColors.darkBackground : AppColors.lightBackground,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          String routeName;
          switch (index) {
            case 0:
              routeName = '/home';
              break;
            case 1:
              routeName = '/complaints';
              break;
            case 2:
              routeName = '/notifications';
              break;
            case 3:
              routeName = '/profile';
              break;
            default:
              routeName = '/home';
          }
          if (ModalRoute.of(context)?.settings.name != routeName) {
            Navigator.pushReplacementNamed(context, routeName);
          }
        },
      ),
    );
  }
}
