import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';

import '../../../../../core/routing.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 7), () {
      GoRouter.of(context).go(
        AppRouter.bottomNavbarScreen,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AppImages.splashBackground,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
          colorFilter: const ColorFilter.mode(AppColors.blue9, BlendMode.srcIn),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 74.h,
              width: 74.w,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                AppImages.splashLogo,
                height: 50.h,
                width: 50.w,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    "GDG Medical",
                    textStyle: AppStyles.font28whiteThin100,
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            )
          ],
        )
      ],
    );
  }
}
