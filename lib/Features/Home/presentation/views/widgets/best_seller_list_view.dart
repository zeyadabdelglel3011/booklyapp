import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views_model/Newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess){
          return ListView.builder(
            padding: EdgeInsets.zero,
            // physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap:true ,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }else if (state is NewestBooksFailure){
          return CustomErrorWidget(error: state.errMessage);
        }else{
          return const Center(
            child: Shimmer(gradient:LinearGradient(colors: [
                Colors.cyan,
                Colors.blue,
                Colors.white,
              ],

            ),
              child: Text(
            'Loading',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight:
              FontWeight.bold,
            ),
          ),
          ),
          );
        }

      },
    );
  }
}


