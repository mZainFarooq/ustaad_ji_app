import 'package:flutter/material.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_app_bar.dart';
import '../../../core/constants/app_colors.dart';

class MyComplainScreen extends StatefulWidget {
  const MyComplainScreen({super.key});

  @override
  State<MyComplainScreen> createState() => _MyComplainScreenState();
}

class _MyComplainScreenState extends State<MyComplainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> pendingComplaints = [
    {
      'service': 'AC Repair',
      'date': '2025-08-01',
      'details': 'AC not cooling properly.',
    },
    {
      'service': 'Plumbing',
      'date': '2025-08-05',
      'details': 'Leaking kitchen sink.',
    },
    {
      'service': 'Electrical',
      'date': '2025-08-10',
      'details': 'Power outage in living room.',
    },
  ];

  final List<Map<String, String>> completedComplaints = [
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
    {
      'service': 'Cleaning',
      'date': '2025-07-20',
      'details': 'House cleaning completed.',
    },
    {
      'service': 'Carpentry',
      'date': '2025-07-15',
      'details': 'Cabinet fixed successfully.',
    },
    {
      'service': 'Handyman',
      'date': '2025-07-10',
      'details': 'Door hinge replaced.',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildComplaintCard(Map<String, String> complaint, bool isDark) {
    final cardColor = isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final titleColor = isDark ? AppColors.darkText : AppColors.lightText;
    final subtitleColor =
        isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;
    final dateColor = subtitleColor;

    return Card(
      color: cardColor,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          complaint['service'] ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: titleColor,
          ),
        ),
        subtitle: Text(
          complaint['details'] ?? '',
          style: TextStyle(color: subtitleColor),
        ),
        trailing: Text(
          complaint['date'] ?? '',
          style: TextStyle(color: dateColor, fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const CustomAppBar(title: 'My Complaints', isUser: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          TabBar(
            controller: _tabController,
            indicatorColor:
                isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
            labelColor: isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
            unselectedLabelColor: isDark ? Colors.grey[500] : Colors.grey[600],
            tabs: const [Tab(text: 'Pending'), Tab(text: 'History')],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: pendingComplaints.length,
                  itemBuilder:
                      (context, index) =>
                          _buildComplaintCard(pendingComplaints[index], isDark),
                ),
                ListView.builder(
                  itemCount: completedComplaints.length,
                  itemBuilder:
                      (context, index) => _buildComplaintCard(
                        completedComplaints[index],
                        isDark,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 2,
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
