import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 60, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,
          height: 24,
          ),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
              icon: const Icon(Icons.search,
              size: 25,
                color: Colors.white,
              ),
          ),


        ],
      ),
    );
  }
}
