import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isDisabled;
  final Color activeColor;
  final Color inactiveColor;
  final Color hoverColor;
  final Color pressedColor;

  final Widget leading;
  final double height;

  final double cornerRadius;

  CustomButton({
    required this.text,
    required this.onTap,
    this.isDisabled = false,
    this.activeColor = AppColor.buttonActiveColor,
    this.inactiveColor = AppColor.buttonInactiveColor,
    this.hoverColor = AppColor.buttonHoverColor,
    this.pressedColor = AppColor.buttonPressedColor,
    this.cornerRadius = 8,
    this.leading = const SizedBox(),
    this.height = 55,
  });

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: AppColor.buttonActiveColor,
      borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          height: height,
          alignment: Alignment.center,
          decoration: _decoration(),
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
        ),
      ),
    );
  }
}
