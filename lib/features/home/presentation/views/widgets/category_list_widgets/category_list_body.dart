import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/widgets/custom_appbar.dart';
import 'package:level1finalproject/core/widgets/top_head_line.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/category_list_widgets/all_products.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/category_list_widgets/category_product_widget.dart';

class CategoryListBody extends StatelessWidget {
  const CategoryListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomAppbar(headline: 'Diabetes Care',icon: true),
           Padding(
             padding:  EdgeInsets.only(left: 17.w,right: 17.w,bottom: 15.h),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 const TopHeadLine(headline1: "Categories"),
                 SizedBox(height: 15.h,),
                 const CategoryProductWidget(),
                 SizedBox(height: 25.h,),
                 const TopHeadLine(headline1: "All Products"),
                 SizedBox(height: 15.h,),
                 const AllProducts()


               ],
             ),
           )
        ],
      ),
    );
  }
}
