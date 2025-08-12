import 'package:flutter/material.dart';
import 'package:flutter_app/features/screens/complain/my_complain_screen.dart';
import 'package:flutter_app/features/screens/profile/profile_screen.dart';
import '../constants/app_route_names.dart';
import '../../features/screens/auth/otp_screen.dart';
import '../../features/screens/auth/phone_number_screen.dart';
import '../../features/screens/home/home_screen.dart';
import '../../features/screens/profile/create_profile_screen.dart';
import '../../features/screens/service/services_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    AppRouteNames.phoneNumber: (context) => const PhoneNumberScreen(),
    AppRouteNames.otp: (context) => const OtpScreen(),
    AppRouteNames.createProfile: (context) => const CreateProfileScreen(),
    AppRouteNames.home: (context) => const HomeScreen(),
    AppRouteNames.services: (context) => const ServicesScreen(),
    AppRouteNames.complains: (context) => const MyComplainScreen(),
    AppRouteNames.profile: (context) => const ProfileScreen(),
  };
}
