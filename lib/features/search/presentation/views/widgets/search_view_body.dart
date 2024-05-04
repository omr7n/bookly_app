import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextFiled(hintText: "", icons: 
          FontAwesomeIcons.magnifyingGlass,
        
        )
        ],
      ),
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
