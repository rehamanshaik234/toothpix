import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SolidColorButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String btnText;
  final Function onTap;

  const SolidColorButton(
      {required this.buttonColor, required this.textColor, required this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      onPressed: (){
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          btnText,
          style: TextStyle(
              color: textColor, fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
      color: buttonColor,
    );
  }
}
