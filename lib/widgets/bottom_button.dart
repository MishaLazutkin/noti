import 'package:flutter/material.dart';

import '../utils/style.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isDisabled;

  final Color color;
  final Widget? icon;
  final double elevation;

  final Widget leading;
  final double height;

  final double cornerRadius;

  BottomButton({
    required this.text,
    required this.onTap,
    this.icon,
    this.isDisabled = false,
    this.color = AppColor.bottomButtonHoverColor,
    this.cornerRadius = 8,
    this.leading = const SizedBox(),
    this.height = 55,
    this.elevation = 0.0,
  });

  BottomButton.withIcon(
      {required this.text,
      required this.onTap,
      required this.icon,
      this.isDisabled = false,
      this.color = AppColor.bottomButtonHoverColor,
      this.cornerRadius = 8,
      this.leading = const SizedBox(),
      this.height = 55,
      this.elevation = 0.0});

  @override
  Widget build(BuildContext context) {
    return buildButton();
  }

  Widget buildButton() {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: icon == null
          ? ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith((states) {
                return elevation;
              }), shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius),
                );
              }), foregroundColor: MaterialStateProperty.resolveWith((states) {
                return AppColor.bottomButtonPressedColor;
              }), backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed))
                  return AppColor.bottomButtonPressedColor;
                else
                  return color;
              })),
              onPressed: () {
                onTap();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leading == null
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: leading,
                        ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$text',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.button,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : ElevatedButton.icon(
              icon: icon!,
              label: Text(
                '$text',
                textAlign: TextAlign.center,
                style: AppTextStyle.button,
              ),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith((states) {
                return elevation;
              }), shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius),
                );
              }), foregroundColor: MaterialStateProperty.resolveWith((states) {
                return AppColor.bottomButtonPressedColor;
              }), backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed))
                  return AppColor.bottomButtonPressedColor;
                else
                  return color;
              })),
              onPressed: () {
                onTap();
              },
            ),
    );
  }
}
