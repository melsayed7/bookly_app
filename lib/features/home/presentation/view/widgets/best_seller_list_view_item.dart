import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(BookDetailsScreen.routeName);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .18,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/Book 1 High.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20,
                        ),
                        RatingBook(mainAxisAlignment: MainAxisAlignment.start),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


