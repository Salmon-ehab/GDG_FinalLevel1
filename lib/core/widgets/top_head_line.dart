import 'package:flutter/material.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class TopHeadLine extends StatelessWidget {
  const TopHeadLine({super.key, required this.headline1, this.headline2});
  final String headline1;
  final String? headline2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headline1,
          style: AppStyles.font16blue3SemiBold600,
        ),
        headline2 != null
            ? InkWell(
                onTap: () {},
                child: Text(
                  headline2!,
                  style: AppStyles.font14blue6Regular400,
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
