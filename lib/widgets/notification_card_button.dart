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
    super.key,
    required this.text,
    required this.onTap,
    this.isDisabled = false,
    this.foregroundColor = AppColor.regularButtonForegroundActiveColor,
    this.cornerRadius = 8,
    this.leading = const SizedBox(),
    this.height = 55,
    this.elevation = 0.0,
  }) : backgroundColor = AppColor.regularButtonBackgroundActiveColor;

  @override
  Widget build(BuildContext context) {
    return buildButton();
  }

  Widget buildButton() {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.resolveWith(
                (states) => TextStyle(fontWeight: FontWeight.bold)),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? AppColor.regularButtonBackgroundPressedColor
                    : backgroundColor;
              },
            ),
            elevation: MaterialStateProperty.resolveWith((states) {
              return elevation;
            }),
            side: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.pressed)
                  ? BorderSide(
                      width: 1,
                      color: AppColor.regularButtonForegroundPressedColor)
                  :BorderSide(
                  width: 1,
                  color: foregroundColor)  ;
            }),
            shape: MaterialStateProperty.resolveWith((states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              );
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed))
                return AppColor.regularButtonForegroundPressedColor;
              else
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
