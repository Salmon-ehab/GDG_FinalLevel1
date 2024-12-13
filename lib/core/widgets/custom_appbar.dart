import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/styles.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.icon, this.text,  this.headline});
  final bool? icon;
  final String? headline;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 18.w),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Row(
            children: [
              icon != false
                  ? IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_outlined,
                    size: 25.sp, color: AppColors.blue3),
              )
                  :  SizedBox.shrink(),
            headline != null?  Text(
                headline!,
                style: AppStyles.font16blue3Bold700,
              ) :SizedBox.shrink(),
            ],
          ),

          text != null
              ? Text(
                  text!,
                  style: AppStyles.font13blue7Medium500,
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
