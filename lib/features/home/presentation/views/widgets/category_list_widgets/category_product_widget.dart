import 'package:flutter/cupertino.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/features/home/presentation/views/widgets/category_list_widgets/category_product.dart';

class CategoryProductWidget extends StatelessWidget {
  const CategoryProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryProduct(image: AppImages.categoryProduct1, productName: "Sugar Substitute"),
        CategoryProduct(image: AppImages.categoryProduct2, productName: "Juices & Vinegars"),
        CategoryProduct(image: AppImages.categoryProduct3, productName: "Vitamins Medicines"),

      ],
    );
  }
}
