import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailSAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.2,
            ),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.styleBold30,
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.styleSemiBold18.copyWith(
                  color: const Color(0xFF707070), fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Center(child: BookRating()),
        ],
      ),
    );
  }
}
