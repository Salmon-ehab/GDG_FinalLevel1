import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/profile_widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
           body: ProfileBody(),
      ),
    );
  }
}
