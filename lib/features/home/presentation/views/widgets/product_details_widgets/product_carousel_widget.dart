import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/images.dart';

class ProductCarouselWidget extends StatefulWidget {
  const ProductCarouselWidget({super.key});

  @override
  State<ProductCarouselWidget> createState() => _ProductCarouselWidgetState();
}

class _ProductCarouselWidgetState extends State<ProductCarouselWidget> {
  int _currentIndex = 0;

  List productList = [
    AppImages.categoryProduct4,
    AppImages.categoryProduct4,
    AppImages.categoryProduct4,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
            items: [
              for (int i = 0; i < productList.length; i++)
                Container(
                    width: 327.w,
                    height: 166.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          productList[i],
                        ),
                        fit: BoxFit.scaleDown,
                      ),
                    ))
            ],
            options: CarouselOptions(
              height: 166.h,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              enlargeFactor: 0.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            )),
        buildDots(),
      ],
    );
  }

  Widget buildDots() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(productList.length, (index) {
          return Container(
              height: 4.h,
              width: 4.w,
              margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? AppColors.blue1
                    : AppColors.blue3.withOpacity(0.15),
              ));
        }));
  }
}
