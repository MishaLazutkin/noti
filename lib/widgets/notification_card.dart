import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noti/utils/style.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(width: 1),
          color: AppColor.notificationCardBorderColor),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Time:',
                style: AppTextStyle.notificationCardTitles,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '21:10',
                style: AppTextStyle.notificationCardValues,
              ),
              Spacer(),
              SvgPicture.asset(
                'lib/assets/icons/delete_forever_icon.svg',
                width: 15,
                height: 15,
                color: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
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
          SizedBox(
            height: 16,
          ),

        ],
      ),
    );
  }
}
