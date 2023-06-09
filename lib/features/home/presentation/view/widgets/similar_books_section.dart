import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        children: const [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
