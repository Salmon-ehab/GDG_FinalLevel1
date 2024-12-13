import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/widgets/top_head_line.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/home_screen_widgets/categories_widget.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/home_screen_widgets/deals_listview.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/home_screen_widgets/home_offer_section.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/home_screen_widgets/welcome_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const WelcomeWidget(),
          Padding(
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 35.h, bottom: 15.h),
            child: Column(
              children: [
                const TopHeadLine(headline1: "Top Categories"),
                SizedBox(
                  height: 10.h,
                ),
                const CategoriesWidget(),
                SizedBox(
                  height: 25.h,
                ),
                const HomeOfferSection(),
                SizedBox(
                  height: 25.h,
                ),
                const TopHeadLine(
                  headline1: "Deals of the Day",
                  headline2: "More",
                ),
                SizedBox(
                  height: 25.h,
                ),
                const DealsListview()
              ],
            ),
          )
        ],
      ),
    );
  }
}
