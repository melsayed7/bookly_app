import 'package:bookly_app/features/search/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/widgets/search_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomSearchTextField(),
        Expanded(
          child: SearchListViewItem(),
        ),
      ],
    );
  }
}
