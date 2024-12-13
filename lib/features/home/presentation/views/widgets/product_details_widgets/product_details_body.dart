import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/styles.dart';
import 'package:level1finalproject/core/routing.dart';
import 'package:level1finalproject/core/widgets/custom_appbar.dart';
import 'package:level1finalproject/core/widgets/top_head_line.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/product_details_widgets/product_carousel_widget.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        Padding(
          padding: EdgeInsets.only(left: 21.w, right: 21.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sugar Free Gold Low Calories",
                style: AppStyles.font22blue3Bold700,
              ),
              Text(
                "Etiam mollis metus non purus ",
                style: AppStyles.font14blue3medium500,
              ),
              ProductCarouselWidget(),
              SizedBox(height: 15.h,),
              priceWidget(),
              SizedBox(height: 5.h,),
              Divider(),
              SizedBox(height: 15.h,),
              productDetails(),
              SizedBox(height: 25.h,),
              productInfo("Expiry Date", "25/12/2023"),
              SizedBox(height: 10.h,),
              productInfo("Brand Name", "Something"),
              SizedBox(height: 35.h,),
              button(context)

            ],
          ),
        )
      ],
    );
  }

  Widget priceWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Rs.99 ",
                  style: AppStyles.font18blue3Bold700Dashed,
                ),
                Text(
                  "Rs.56",
                  style: AppStyles.font18blue3Bold700,
                )
              ],
            ),
            Text(
              "Etiam mollis ",
              style: AppStyles.font14blue3Regular400,
            )
          ],
        ),
        Center(
            child: Text(
          "Add to cart",
          style: AppStyles.font14blue10Regular400,
        ))
      ],
    );
  }

  Widget productDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopHeadLine(headline1: "Product Details"),
        SizedBox(height: 15.w,),
        SizedBox(
          width: 320.h,
          child: Text(
            "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
            style: AppStyles.font14blue3light300,
          ),
        )
      ],
    );
  }
  
  Widget productInfo(String text1,String text2){
    return Row(
      children: [
        Text(text1,style: AppStyles.font16blue3SemiBold600,),
        SizedBox(width: 25.h,),
        Text(text2,style: AppStyles.font14blue3light300,)
      ],
    );
  }

  Widget button(BuildContext context){
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.cartScreen);
      },
      child: Container(
        height:45.h ,
        width: 330.w,
        decoration: BoxDecoration(
          color: AppColors.blue1,
          borderRadius: BorderRadius.circular(56.r)
        ),
        child: Center(child: Text("GO TO CART",style: AppStyles.font16WhiteBold700,)),
      ),
    );
  }
}
