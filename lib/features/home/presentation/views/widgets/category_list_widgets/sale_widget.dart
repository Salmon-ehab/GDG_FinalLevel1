import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.86.w,
      height: 57.5.h,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.saleTag),)
      ),
      child: Transform.rotate(
        angle: -0.785398,
        child: Padding(
          padding:  EdgeInsets.only(left: 13.w,top: 5.h),
          child: Text(
            'SALE',
            style: AppStyles.font12whiteBold700,
          ),
        ),
      ),
    );
  }

}
