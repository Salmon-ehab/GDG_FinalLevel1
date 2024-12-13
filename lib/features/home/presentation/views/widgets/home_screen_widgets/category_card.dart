import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styles.dart';

class CategoryCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text;
  final String route;

  const CategoryCard({
    super.key,
    required this.color1,
    required this.color2,
    required this.text,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(route);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 15.h),
        height: 120.h,
        width: 73.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(70.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 23,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 58.h,
              width: 54.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [color1, color2]),
                shape: BoxShape.circle,
              ),
            ),
            Text(
              text,
              style: AppStyles.font11blue3Light300,
            ),
          ],
        ),
      ),
    );
  }
}
