// import 'package:booklyapp/Features/Home/data/models/bookModel.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/utilities/assets.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});



  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: bookModel );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            CustomListViewItem(imageUrl: bookModel.volumeInfo.imageLinks?.smallThumbnail??"",),

            const SizedBox(width: 30,),
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width :MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      bookModel.volumeInfo.title !,
                      style: Styles.textStyle20Bold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                    ),
                  ),
                  const SizedBox(height: 3,),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis ,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price
                      const Text(
                        "Free",
                        style: Styles.textStyle20Bold,

                      ),

                      // rating book
                      BookRating(
                        count: bookModel.volumeInfo.averageRating ?? 0,
                        rating: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),

                    ],
                  ),

                ],
                         ),
             ),

            const SizedBox(height: 50,),

          ],


             ),

      ),
    );
  }
}
