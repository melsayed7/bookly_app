import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedListView(),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
