import 'package:flutter/material.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_app_bar.dart';
import '../../../core/constants/app_colors.dart';
import '../../screens/auth/phone_number_screen.dart';
import '../../widgets/custom_button.dart';
import '../../../core/utils/custom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final String avatarUrl = 'https://i.pravatar.cc/300';
  final String fullName = 'Alexa doe';
  final String phoneNumber = '+92 300 1234567';
  final String role = 'Customer';
  final String address = 'Lahore, Pakistan';
  final String createdAt = '2024-01-10';
  final int totalServices = 5;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? AppColors.darkText : AppColors.lightText;
    final secondaryTextColor =
        isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;
    final cardColor = isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final primaryColor =
        isDark ? AppColors.darkPrimary : AppColors.lightPrimary;

    return Scaffold(
      appBar: CustomAppBar(title: 'Profile', isUser: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                Positioned(
                  bottom: 0,
                  right: 4,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 4),
                        ],
                      ),
                      child: Icon(
                        Icons.edit,
                        color:
                            isDark
                                ? AppColors.darkBackground
                                : AppColors.lightBackground,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Text(
              fullName,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildInfoChip(
                  Icons.calendar_today,
                  'Joined: $createdAt',
                  primaryColor,
                  secondaryTextColor,
                ),
              ],
            ),

            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: isDark ? Colors.black54 : Colors.grey.shade200,
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildDetailRow(Icons.phone, phoneNumber, secondaryTextColor),
                  const Divider(height: 32, color: Colors.grey),
                  _buildDetailRow(
                    Icons.person_outline,
                    role,
                    secondaryTextColor,
                  ),
                  const Divider(height: 32, color: Colors.grey),
                  _buildDetailRow(
                    Icons.location_on_outlined,
                    address,
                    secondaryTextColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Logout',
                onPressed: () {
                  CustomNavigation.push(context, const PhoneNumberScreen());
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 3,
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

  Widget _buildDetailRow(IconData icon, String value, Color valueColor) {
    return Row(
      children: [
        Icon(icon, size: 24, color: Colors.grey),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 16, color: valueColor),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoChip(
    IconData icon,
    String label,
    Color bgColor,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: bgColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
