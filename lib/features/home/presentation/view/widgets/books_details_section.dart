import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_item.dart';
import 'rating_book.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const RatingBook(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
