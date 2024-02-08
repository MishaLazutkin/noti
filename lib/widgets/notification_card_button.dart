import 'package:flutter/material.dart';

import '../utils/style.dart';

class NotificationCardButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isDisabled;
  final Color foregroundColor;
  final Color backgroundColor;

  final double elevation;

  final Widget leading;
  final double height;

  final double cornerRadius;

  NotificationCardButton({
    required this.text,
    required this.onTap,
    this.isDisabled = false,
    this.foregroundColor = AppColor.regularButtonForegroundActiveColor,
    this.backgroundColor = AppColor.regularButtonBackgroundActiveColor,
    this.cornerRadius = 8,
    this.leading = const SizedBox(),
    this.height = 55,
    this.elevation = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return buildButton();
  }

  Widget buildButton() {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) {
              return elevation;
            }),
            side: MaterialStateProperty.resolveWith((states) {
              return BorderSide(width: 1, color: foregroundColor);

            }),
            shape: MaterialStateProperty.resolveWith((states) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius), );
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return foregroundColor;
            }),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed))
                return AppColor.regularButtonBackgroundPressedColor;
              else
                return backgroundColor;
            })),
        onPressed: () {
          onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$text',
                  textAlign: TextAlign.center,
                  //style: AppTextStyle.button,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
