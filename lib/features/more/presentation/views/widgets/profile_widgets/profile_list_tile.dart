import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:level1finalproject/core/assets/colors.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/assets/styles.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35.h),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset(AppImages.edit),
            title: Text(
              "Edit Profile",
              style: AppStyles.font15blue12Medium500,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  size: 16.sp,
                )),
            minTileHeight: 20,
          ),
          Divider(
            color: AppColors.blue12.withOpacity(.08),
            thickness: 1,
            indent: 55,
            endIndent: 16,
          ),
          ListTile(
            leading: SvgPicture.asset(AppImages.order),
            title: Text(
              "My orders",
              style: AppStyles.font15blue12Medium500,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  size: 16.sp,
                )),
            minTileHeight: 20,
          ),
          Divider(
            color: AppColors.blue12.withOpacity(.08),
            thickness: 1,
            indent: 55,
            endIndent: 16,
          ),
          ListTile(
            leading: SvgPicture.asset(AppImages.billing),
            title: Text(
              "Billing",
              style: AppStyles.font15blue12Medium500,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  size: 16.sp,
                )),
            minTileHeight: 20,
          ),
          Divider(
            color: AppColors.blue12.withOpacity(.08),
            thickness: 1,
            indent: 55,
            endIndent: 16,
          ),
          ListTile(
            leading: SvgPicture.asset(AppImages.fag),
            title: Text(
              "Faq",
              style: AppStyles.font15blue12Medium500,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  size: 16.sp,
                )),
            minTileHeight: 20,
          ),
          Divider(
            color: AppColors.blue12.withOpacity(.08),
            thickness: 1,
            indent: 55,
            endIndent: 16,
          ),
        ],
      ),
    );
  }
}
