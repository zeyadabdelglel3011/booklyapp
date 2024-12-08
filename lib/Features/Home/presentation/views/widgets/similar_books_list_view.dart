import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views_model/similar_books__cubit.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height * .15,

        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder:(context , index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CustomListViewItem(imageUrl: 'https://www.flipkart.com/c-programming-language-comprehensive-book-2022/p/itm6ff42bba43a9a?pid=9789395342377&lid=LSTBOK97893953423774LHF9L&marketplace=FLIPKART&cmpid=content_book_8965229628_gmc',),
              );
            } ),
      );
    }else if (state is SimilarBooksFailure){
      return CustomErrorWidget(error: state.errMsg);
    }else{
      return const CircularProgressIndicator();
    }
  },
);
  }
}
