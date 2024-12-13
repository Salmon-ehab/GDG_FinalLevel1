import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:level1finalproject/core/widgets/custom_appbar.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/profile_widgets/profile_info.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/profile_widgets/profile_list_tile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.h, left: 17.w),
      child: const Column(
        children: [
          CustomAppbar(
            headline: "My Profile",
            icon: false,
          ),
          ProfileInfo(),
          ProfileListTile()
        ],
      ),
    );
  }
}
