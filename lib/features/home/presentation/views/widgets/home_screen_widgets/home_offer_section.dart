import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class HomeOfferSection extends StatelessWidget {
  const HomeOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.h,left: 35.w),
      height: 147.h,
      width: 360.w,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.maskImage))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 131.w,
            child: Text("Save extra on every order",style: AppStyles.font20blue7Bold700),
          ),
        ],
      ),
    );
  }
}
