import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/cart_widgets/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: CartBody(),
    );
  }
}
