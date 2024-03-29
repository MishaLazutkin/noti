import 'package:flutter/material.dart';
import '../utils/style.dart';

class CustomTimeTextField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final bool showError;
  final TextStyle textStyle;
  final Function onTyping;
  final double textFieldHeight;

  CustomTimeTextField({
    required this.focusNode,
    required this.controller,

    this.showError = false,
    this.textStyle = AppTextStyle.inputTime,
    Key? key,
    required this.onTyping,
    this.textFieldHeight = AppValues.textFieldHeight,
  }) : super(key: key);

  @override
  _CustomTimeTextFieldState createState() => _CustomTimeTextFieldState();
}

class _CustomTimeTextFieldState extends State<CustomTimeTextField> {
  void _focusNodeListener() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_focusNodeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 1,
          onChanged: (x) {

              widget.onTyping(x);
            if (x.isNotEmpty)
              FocusScope.of(context).nextFocus();
            if (x.isEmpty) FocusScope.of(context).previousFocus();
          },
          focusNode: widget.focusNode,
          controller: widget.controller,
          minLines: null,
          style: widget.textStyle,
          keyboardType: TextInputType.number ,

          decoration: const InputDecoration(
            counterText: "",
            contentPadding: EdgeInsets.only(top: 0),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.focusedTextFieldBorderColor, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
          ),
        ),
      ),
    );
  }
}
