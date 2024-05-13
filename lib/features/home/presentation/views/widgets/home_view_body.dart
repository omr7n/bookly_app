import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics:   BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
             SizedBox(
               height: 50,
             ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Newset Books",
                  style: Styles.styleSemiBold18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
             
            ],
          ),
        ),
         SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),

      ],
    );
    // return const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 30),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CustomAppBar(),
    //       FeaturedBooksListView(),
    //       SizedBox(
    //         height: 50,
    //       ),
    //       Text(
    //         "Best Seller",
    //         style: Styles.styleSemiBold18,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       // BestSellerListViewItem(),
    //       BestSellerListView(),
    //     ],
    //   ),
    // );
  }
}
