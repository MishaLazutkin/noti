import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noti/add_notification.dart';
import 'package:noti/widgets/bottom_button.dart';

import '../widgets/notification_card.dart';

class OneTimeTab extends StatelessWidget {
  const OneTimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          NotificationCard(),
          SizedBox(
            height: 16,
          ),
          NotificationCard(),
          SizedBox(
            height: 16,
          ),
          BottomButton.withIcon(
              icon: SvgPicture.asset(
                'lib/assets/icons/add_circle.svg',
                width: 20,
                height: 20,
                color: Colors.white,
              ),
              text: 'Add new notification',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const AddNotification()));
              })
        ],
      ),
    );
  }
}
