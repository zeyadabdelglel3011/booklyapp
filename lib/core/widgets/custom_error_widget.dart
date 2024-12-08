import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.error});

  final String error;
  @override
  Widget build(BuildContext context) {
    return Text(
      error ,
        style: Styles.textStyle18,
    );
  }
}
