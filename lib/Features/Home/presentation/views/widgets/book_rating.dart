import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
 final  MainAxisAlignment mainAxisAlignment;

 final int rating;
 final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(Icons.star,
        color: Color(0xffFFDD4F),
          size: 30,
        ),
         const SizedBox(width: 6.3,),
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 5,),
        Text(
          '($count)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
