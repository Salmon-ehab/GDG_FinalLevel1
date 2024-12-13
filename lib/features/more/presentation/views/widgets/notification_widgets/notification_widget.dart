import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key, required this.icon, required this.text1, required this.text2});
 final String icon;
 final String text1;
 final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.grey4,
        ),
        Padding(
          padding:  EdgeInsets.only(top:15.h ,left: 25.w,bottom: 15.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                            icon,
                            height: 22.h,
                            width: 16.w,
                          ),
              SizedBox(width: 20.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 296.w,
                      child: Text(
                   text1,
                    style: AppStyles.font14blue12fullRegular400,
                  )),
                  SizedBox(height: 5.h,),
                  Text(
                    text2,
                    style: AppStyles.font14blue12Regular400,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
