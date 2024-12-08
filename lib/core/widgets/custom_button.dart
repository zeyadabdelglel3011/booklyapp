import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.bgColor, required this.textColor,  this.border, required this.text});

  final Color bgColor ;
  final Color textColor ;
  final BorderRadius? border ;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: (){},

        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape:  RoundedRectangleBorder(
              borderRadius: border ??  BorderRadius.circular(16),

          ),
        ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
      ),
    );
  }
}
