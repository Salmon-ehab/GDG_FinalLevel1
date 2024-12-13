import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/fonts.dart';

abstract class AppStyles {
  static TextStyle font24WhiteBold700 = TextStyle(
    color: AppColors.white,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font16WhiteRegular400 = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font16WhiteBold700 = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font11blue3Light300 = TextStyle(
    color: AppColors.blue3.withOpacity(.95),
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.light300,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font16blue3SemiBold600 = TextStyle(
    color: AppColors.blue3,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold600,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font16blue3Bold700 = TextStyle(
    color: AppColors.blue3,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font14blue6Regular400 = TextStyle(
    color: AppColors.blue6,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font20blue7Bold700 = TextStyle(
    color: AppColors.blue7,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font10blue3Regular400 = TextStyle(
    color: AppColors.blue3,
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font13blue7Medium500 = TextStyle(
    color: AppColors.blue7,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium500,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font15blue12Medium500 = TextStyle(
    color: AppColors.blue12.withOpacity(.75),
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium500,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font13blue3Regular400 = TextStyle(
    color: AppColors.blue3,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue3Regular400=TextStyle(
    color: AppColors.blue3.withOpacity(.7),
    fontSize:14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue10Regular400=TextStyle(
    color: AppColors.blue10,
    fontSize:14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font28whiteThin100 = GoogleFonts.overpass(
    color: AppColors.white,
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.thin100,
    fontStyle: FontStyle.italic,
  );

  static TextStyle font12whiteBold700 = TextStyle(
    color: AppColors.white,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font22blue3Bold700 = TextStyle(
    color: AppColors.blue3,
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font14blue3medium500 = TextStyle(
    color: AppColors.blue3.withOpacity(.45),
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium500,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue3light300 = TextStyle(
    color: AppColors.blue3.withOpacity(.45),
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.light300,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font18blue3Bold700Dashed = TextStyle(
    color: AppColors.blue3.withOpacity(.5),
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold700,
    decoration: TextDecoration.lineThrough,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font18blue3Bold700 = TextStyle(
    color: AppColors.blue3,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold700,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );

  static TextStyle font20blue12Regular400 = TextStyle(
    color: AppColors.blue12.withOpacity(.45),
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue12Regular400 = TextStyle(
    color: AppColors.blue12.withOpacity(.45),
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue12medium500 = TextStyle(
    color: AppColors.blue12.withOpacity(.45),
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium500,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font14blue12fullRegular400 = TextStyle(
    color: AppColors.blue12,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
  static TextStyle font16blue12fullRegular400 = TextStyle(
    color: AppColors.blue12,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular400,
    fontFamily: GoogleFonts.overpass().fontFamily,
  );
}
