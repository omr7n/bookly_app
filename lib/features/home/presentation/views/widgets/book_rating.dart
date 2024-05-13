import 'package:bookly_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xFFFFDD4F),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
         Text(
         rating.toString(),
          style: Styles.styleRegular16,
        ),
        const SizedBox(
          width: 9,
        ),
         Opacity(
          opacity: 0.5,
          child: Text(
           count.toString(),
            style: Styles.styleRegular14,
          ),
        ),
      ],
    );
  }
}
