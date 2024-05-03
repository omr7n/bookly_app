
import 'package:flutter/material.dart';

import '../custom_book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical:20 ),
      child: Column(
        children: [
          SafeArea(child: CustomBookDetailSAppBar(),),
        ],
      ),
    );
  }
}
