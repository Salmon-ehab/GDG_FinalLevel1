import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/notification_widgets/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: NotificationBody(),
      ),
    );
  }
}
