import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksButtons extends StatelessWidget {
  const BooksButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
          children: [
            Expanded(child: CustomButton(
              bgColor: Colors.white,
              textColor: Colors.black,
              text: "19.99 \$",
              border: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            ),

            Expanded(child: CustomButton(
              bgColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: "Free Preview",
              border: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            ),



          ],
      ),
    );
  }
}
