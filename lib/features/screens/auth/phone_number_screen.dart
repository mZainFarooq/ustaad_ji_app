import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart'; // Custom button import karo
import '../../screens/auth/otp_screen.dart';
import '../../../core/utils/custom_navigation.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // FocusNode define karo

  @override
  void initState() {
    super.initState();
    // Screen load hone ke baad focus request karna hai
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _focusNode.dispose(); // FocusNode dispose karna mat bhoolna
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Phone Number"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter Your Phone Number',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'You will receive a 4 digit code to login',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _phoneController,
              focusNode: _focusNode, // FocusNode assign karo yahan
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'Phone Number',
                counterText: '',
                prefixText: '+92 ',
                prefixStyle: TextStyle(color: Colors.grey[700], fontSize: 18),
              ),
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Send OTP',
              onPressed: () {
                if (_phoneController.text.length == 10) {
                  CustomNavigation.push(context, const OtpScreen());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Please enter a valid 10 digit phone number',
                        style: TextStyle(color: AppColors.error),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
