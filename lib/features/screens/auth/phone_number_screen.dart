import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../screens/auth/otp_screen.dart';
import '../../../core/utils/custom_navigation.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Phone Number"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Phone Number Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              CustomNavigation.push(context, const OtpScreen());
            },
            child: const Text("Go to Next Screen"),
          ),
        ],
      ),
    );
  }
}
