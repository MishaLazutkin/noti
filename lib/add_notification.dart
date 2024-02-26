import 'package:flutter/material.dart';
import 'package:noti/utils/style.dart';

import 'widgets/header.dart';

class AddNotification extends StatelessWidget {
  const AddNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Add new notification',implyLeading: true,),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
          child: const Column(
            children: [
              Text(
                'Message',
                style:  AppTextStyle.formTitles ,
              ),
                SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(labelText: 'Enter Message'),
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: 5,
              )
            ],
          ),
        ));
  }
}
