import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';
import 'package:level1finalproject/core/routing.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 32.h, left: 27.w, right: 27.w,bottom: 40.h),
          height: 213.h,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [AppColors.blue1, AppColors.blue2]),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Image.asset(AppImages.welcomeImage),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.notificationScreen);
                        },
                        child: SvgPicture.asset(
                          AppImages.notificationImage,
                          height: 24.h,
                          width: 24.w,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.cartScreen);

                        },
                        child: SvgPicture.asset(
                          AppImages.cartImage,
                          height: 24.h,
                          width: 24.w,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.h,),
              Text("Hi, Rahul",style: AppStyles.font24WhiteBold700,),
              SizedBox(height: 5.h,),
              Text("Welcome to GDG Medical Store",style: AppStyles.font16WhiteRegular400,)
            ],
          ),
        ),
        Positioned(
          top: 60,
          left: -211,
          child: Container(
            width: 412.w,
            height: 412.h,
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(.07), // لون شفاف
              shape: BoxShape.circle,
            ),
          ),
        ),

      ],
    );
  }
}
