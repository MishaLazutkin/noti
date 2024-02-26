import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
 final String title;
 final bool implyLeading;


  CustomAppBar({
    this.title='',
    this.implyLeading=false,
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: implyLeading? IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ):Container(),
      backgroundColor: AppColor.headerBackgroundColor,
      elevation: 0.0,
      centerTitle:true,
      automaticallyImplyLeading: implyLeading,
      actions: [Container()],
      title: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Text(title, ),
      ),


    );
  }

//+ MediaQuery.of(context).padding.top
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
