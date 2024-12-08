//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
//import 'package:booklyapp/Features/Home/data/models/bookModel.dart';

import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return  SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomListViewItem(
                        imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??  "",


                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return const CustomErrorWidget( error: 'state.errMessage',);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}


