import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noti/utils/style.dart';

import 'notification_card_button.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(width: 1,color: AppColor.primaryColor),
          color: AppColor.notificationCardBackgroundColor),
      child: Column(

        children: [
          Row(
            children: [
              const Text(
                'Time:',
                style: AppTextStyle.notificationCardTitles,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '21:10',
                style: AppTextStyle.notificationCardValues,
              ),
              const Spacer(),
              SvgPicture.asset(
                'lib/assets/icons/delete_forever_icon.svg',
                width: 20,
                height: 20,
                color: Colors.red,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              Text(
                'Message:',
                style: AppTextStyle.notificationCardTitles,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Do not forget do this',
                style: AppTextStyle.notificationCardValues,
              ),

            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              NotificationCardButton(text: 'Select triger 1',onTap: (){},),
              const SizedBox(
                width: 16,
              ),
              NotificationCardButton(text: 'Select triger 2',onTap: (){},),
            ],
          ),
        ],
      ),
    );
  }
}
