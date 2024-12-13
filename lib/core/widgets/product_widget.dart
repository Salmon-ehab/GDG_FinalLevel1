import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/styles.dart';
import 'package:level1finalproject/core/routing.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/category_list_widgets/sale_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.isNeeded, required this.image});
  final bool isNeeded ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.productDetailsScreen);
      },
      child: Container(
        height: isNeeded ?250.h:239.h,
        width: isNeeded?177.1.w:159.93.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.grey3,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: isNeeded ?158.w:147.h,
                    width:isNeeded?174.85.w: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.grey1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        image,
                        height:isNeeded ?119.h: 128.h,
                        width: isNeeded ?130.w:160.w,
                        fit: BoxFit.fill,
                      ),
                    )),
             isNeeded?   const Positioned(
                  top: 0,
                  left: -1,
                  child: SaleWidget(),
                ) :const SizedBox.shrink(),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w,top: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:isNeeded ?121.w: 95.w,
                      child: Text(
                        "Accu-check Active Test Strip",
                        style: isNeeded ?AppStyles.font13blue3Regular400:AppStyles.font10blue3Regular400,
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Rs.112",
                    style: AppStyles.font16blue3SemiBold600,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
