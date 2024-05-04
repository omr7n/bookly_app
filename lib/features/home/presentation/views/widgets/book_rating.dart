import 'package:bookly_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
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
        const Text(
          "4.8",
          style: Styles.styleRegular16,
        ),
        const SizedBox(
          width: 9,
        ),
        const Opacity(
          opacity: 0.5,
          child: Text(
            "(2390)",
            style: Styles.styleRegular14,
          ),
        ),
      ],
    );
  }
}
