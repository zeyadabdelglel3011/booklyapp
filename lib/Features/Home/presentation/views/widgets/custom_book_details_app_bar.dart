import 'package:booklyapp/contants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingItems,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          },
            icon:const Icon(Icons.close,
            size: 30,) ,
          ),
          IconButton(onPressed: (){},
            icon:const Icon(Icons.shopping_cart_outlined,
            size: 30,) ,
          ),

        ],
      ),
    );
  }
}