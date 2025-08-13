import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {"icon": Icons.ac_unit, "title": "AC Repair"},
      {"icon": Icons.handyman, "title": "Carpentry"},
      {"icon": Icons.plumbing, "title": "Plumbing"},
      {"icon": Icons.electrical_services, "title": "Electrical"},
      {"icon": Icons.cleaning_services, "title": "Cleaning"},
      {"icon": Icons.home_repair_service, "title": "Handyman"},
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: 'Home', isUser: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome, Alexa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Flexible(
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 3 / 2,
                ),

                itemBuilder: (context, index) {
                  final service = services[index];
                  return CustomServiceCard(
                    iconData: service["icon"] as IconData,
                    title: service["title"] as String,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
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
