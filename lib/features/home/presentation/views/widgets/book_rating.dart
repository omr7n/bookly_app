import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xFFFFDD4F),
          ),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.styleRegular16,
        ),
     const SizedBox(width: 9,),
         Text(
          "(2390)",
          style: Styles.styleRegular14.copyWith(color:const Color(0xFF707070) ),
        ),
      ],
    );
  }
}
