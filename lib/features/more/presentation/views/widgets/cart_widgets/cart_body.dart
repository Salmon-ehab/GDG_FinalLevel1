import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          AppImages.cart,
          height: 267.h,
          width: 296.w,
        )),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "Whoops",
          style: AppStyles.font16blue12fullRegular400,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "Your cart is empty!",
          style: AppStyles.font14blue12medium500,
        )
      ],
    );
  }
}
