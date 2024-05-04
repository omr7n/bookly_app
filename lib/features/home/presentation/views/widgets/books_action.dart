import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99€",
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            
            child: CustomButton(
              fontSize:16 ,
              backgroundColor: const Color(0xFFEF8262),
              textColor: Colors.white,
              text: "Free preview",
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
