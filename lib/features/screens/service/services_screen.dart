import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Services', isUser: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          String routeName;
          switch (index) {
            case 0:
              routeName = '/home';
              break;
            case 1:
              routeName = '/services';
              break;
            case 2:
              routeName = '/complaints';
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
