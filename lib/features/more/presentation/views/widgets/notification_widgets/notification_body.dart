import 'package:flutter/cupertino.dart';
import 'package:level1finalproject/core/assets/images.dart';
import 'package:level1finalproject/core/widgets/custom_appbar.dart';
import 'package:level1finalproject/features/more/presentation/views/widgets/notification_widgets/notification_widget.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(
          headline: "Notification",
          text: "Clear all",
        ),
        NotificationWidget(
          icon: AppImages.icon1,
          text1:
              'We know that — for children AND adults — learning is most effective when it is',
          text2: 'Aug 12, 2020 at 12:08 PM',
        ),
        NotificationWidget(
            icon: AppImages.icon2,
            text1:
                "The future of professional learning is immersive, communal experiences for ",
            text2: "Aug 12, 2020 at 12:08 PM"),
        NotificationWidget(
            icon: AppImages.icon3,
            text1:
                "With this in mind, Global Online Academy created the Blended Learning Design ",
            text2: "Aug 12, 2020 at 12:08 PM"),
        NotificationWidget(
            icon: AppImages.icon3,
            text1:
                "Technology should serve, not drive, pedagogy. Schools often discuss ",
            text2: "Aug 12, 2020 at 12:08 PM"),
        NotificationWidget(
            icon: AppImages.icon3,
            text1:
                "Peer learning works. By building robust personal learning communities both   ",
            text2: "Aug 12, 2020 at 12:08 PM")
      ],
    );
  }
}
