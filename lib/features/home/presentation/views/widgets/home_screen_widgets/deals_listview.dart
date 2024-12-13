import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/widgets/product_widget.dart';

class DealsListview extends StatelessWidget {
  const DealsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 3 / 4,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ProductWidget(isNeeded: false, image: AppImages.productImage,);
      },
    );
  }
}
