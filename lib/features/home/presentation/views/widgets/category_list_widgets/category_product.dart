import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key, required this.image, required this.productName});
   final String image;
   final String productName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162.h,
      width: 111.w,
      decoration: BoxDecoration(
          color: AppColors.grey2, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
            image,
            height: 99.h,
            width: 111.w,
            fit: BoxFit.scaleDown,
          )),
          SizedBox(height: 15.h,),
          SizedBox(
              width: 63.w,
              child: Text(
                productName,
                style: AppStyles.font13blue3Regular400,
              )),
        ],
      ),
    );
  }
}
