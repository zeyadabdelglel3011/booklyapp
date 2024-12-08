import 'package:booklyapp/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/books_buttons.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomListViewItem(imageUrl: "https://www.flipkart.com/c-programming-language-comprehensive-book-2022/p/itm6ff42bba43a9a?pid=9789395342377&lid=LSTBOK97893953423774LHF9L&marketplace=FLIPKART&cmpid=content_book_8965229628_gmc",),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(

            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksButtons(),
      ],
    );
  }
}