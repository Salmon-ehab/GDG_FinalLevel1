import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/features/home/presentation/views/home_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/cart_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/notification_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/profile_screen.dart';

import '../assets/images.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _currentIndex = 0;
  List<Widget> screens = const[
    HomeScreen(),
    NotificationScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int y) {
            setState(() {
              _currentIndex = y;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.homeIcon,
                  height: 19.h,
                  width: 17.w,
                  fit: BoxFit.fill,
                  color: _currentIndex == 0
                      ? AppColors.blue1
                      : AppColors.blue3.withOpacity(.45),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: SvgPicture.asset(
                    AppImages.notificationIcon,
                    height: 19.h,
                    width: 17.w,
                    fit: BoxFit.fill,
                    color: _currentIndex == 1
                        ? AppColors.blue1
                        : AppColors.blue3.withOpacity(.45),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: SvgPicture.asset(
                    AppImages.cartIcon,
                    height: 19.h,
                    width: 17.w,
                    fit: BoxFit.fill,
                    color: _currentIndex == 2
                        ? AppColors.blue1
                        : AppColors.blue3.withOpacity(.45),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.profileIcon,
                  height: 19.h,
                  width: 17.w,
                  fit: BoxFit.fill,
                  color: _currentIndex == 3 ?AppColors.blue1 : AppColors.blue3.withOpacity(.45),
                ),
                label: ''),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ));
  }
}
