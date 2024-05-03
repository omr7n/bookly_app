import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 29, 126, 174),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
         Expanded(
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [
              SizedBox(width: MediaQuery.sizeOf(context).width *0.5,
                child:  Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.styleBold20.copyWith(fontFamily: kBriemHand),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 3,),
               const Text(
                "J.K. Rowling",
                style: Styles.styleRegular14,
              ),
               const SizedBox(height: 3,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                    Text(
                    "19.99 €",
                    style: Styles.styleBold20.copyWith(fontWeight: FontWeight.w900,fontFamily: "Montserrat-Bold"),
                               ),
                               const BookRating(),
                 ],
               ),
            ],
                   ),
         )
      ],
    );
  }
}

