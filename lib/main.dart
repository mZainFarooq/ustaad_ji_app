import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './core/theme/app_theme.dart';
import './core/theme/theme_provider.dart';
import './core/routes/app_routes.dart';
import './core/constants/app_route_names.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      initialRoute: AppRouteNames.phoneNumber,
      routes: AppRoutes.routes,
    );
  }
}
