import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';
import '../../../../../../core/assets/styles.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 30.h,left:5.w),
      child: Row(
        children: [
          Center(
            child: Container(
              height: 62.h,
              width: 62.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: AppColors.blue11, width: 2.w)),
              child: Image.asset(
                AppImages.welcomeImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 15.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Rahul kanjariya",style: AppStyles.font20blue12Regular400,),
              Text("Welcome to  GDG Medical Store",style: AppStyles.font14blue12Regular400,),
            ],
          )
        ],
      ),
    );
  }
}
