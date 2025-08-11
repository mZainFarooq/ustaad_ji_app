import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Phone Number"),
      body: const Center(
        child: Text("Toggle the theme from the switch in AppBar"),
      ),
    );
  }
}
