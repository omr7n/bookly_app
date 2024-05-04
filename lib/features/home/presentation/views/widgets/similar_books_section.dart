import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.styleRegular14,
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
