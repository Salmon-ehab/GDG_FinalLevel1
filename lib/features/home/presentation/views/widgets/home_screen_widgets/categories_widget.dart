import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/routing.dart';

import 'category_card.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryCard(
          color1: AppColors.pink1,
          color2: AppColors.pink2,
          text: "Dental",
          route: AppRouter.categoryListScreen,
        ),
        CategoryCard(
          color1: AppColors.green1,
          color2: AppColors.green2,
          text: "Wellness",
          route: AppRouter.categoryListScreen,
        ),
        CategoryCard(
          color1: AppColors.orange1,
          color2: AppColors.orange2,
          text: "Homeo",
          route: AppRouter.categoryListScreen,
        ),
        CategoryCard(
          color1: AppColors.blue4,
          color2: AppColors.blue5,
          text: "Eye care",
          route: AppRouter.categoryListScreen,
        ),
      ],
    );
  }
}

