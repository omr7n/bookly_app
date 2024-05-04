import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_filed.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(
            hintText: "Search",
            icons: FontAwesomeIcons.magnifyingGlass,
          ),
          SizedBox(height: 16,),
          Text(
            "Search Result",
            style: Styles.styleSemiBold18,
          ),
          Expanded
          (child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      // separatorBuilder: (context, index) => const SizedBox(height: 20,),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}




// class CustomSearchTextFiled extends StatelessWidget {
//   const CustomSearchTextFiled({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(),
//         hintText: "Search",
//         suffixIcon: Icon(
//           FontAwesomeIcons.magnifyingGlass,
//           size: 22,
//         ),
//       ),
//     );
//   }
// }
