import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/features/splash/presentation/views/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:AppColors.blue1,
      body: SplashBody(),
    );
  }
}
