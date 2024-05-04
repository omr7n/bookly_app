import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
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
        children: [
          const CustomBookDetailSAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.17,
            ),
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
