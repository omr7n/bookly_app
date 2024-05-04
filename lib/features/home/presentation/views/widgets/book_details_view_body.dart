import 'package:bookly_app/core/utils/styles.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



import '../../custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      slivers: [SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailSAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.22,
              ),
              child: const CustomBookItem(),
            ),
            const SizedBox(
              height: 20,
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
                style:
                    Styles.styleSemiBold18.copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 15,
            ),
            const BooksAction(),
          const  Expanded(
              child:  SizedBox(
                height: 50,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Styles.styleRegular14,
              ),
            ),
            const SizedBox(height: 16,),
            const SimilarBooksListView(),
             const SizedBox(
              height: 20,
            ),
          ],
        ),
      ), )],
      
    );
  }
}
