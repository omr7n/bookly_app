import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 22,
        itemBuilder: (context, index) {
          return const CustomBookItem();
        },
      ),
    );
  }
}
