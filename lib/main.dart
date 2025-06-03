import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IMC Calculator App"),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textTitleHome,
        ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen()
      ),
    );
  }
}
