import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:booklyapp/contants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: kPaddingItems,
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 24,),
              Padding(
                padding: kPaddingItems,
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,

                ),
              ),
              // SizedBox(height: 20,),



            ],
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: kPaddingItems,
            child: BestSellerListView(),
          ),
        ),
      ],
    );


  }
}



