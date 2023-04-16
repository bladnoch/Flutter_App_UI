


import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget{
  final String text;
  final Color bgColor;
  final Color textColor;

  Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45) //side
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}