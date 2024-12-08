import 'package:booklyapp/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:booklyapp/contants.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: kPaddingItems,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Search Result',
                  style: Styles.textStyle18,

                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(child: SearchResultListView()),
              ],
            ),
          ),
        ),
      ],
    );

  }
}
