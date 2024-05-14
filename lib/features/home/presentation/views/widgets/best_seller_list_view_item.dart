import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        context.push(AppRouter.kBookDetailsView ,extra: Item);
      },
      child: SizedBox(
        height: 135,
        child: Row(
          children: [
            CustomBookImage(imageUrl: item.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      item.volumeInfo.title!,
                      style:
                          Styles.styleBold20.copyWith(fontFamily: kBriemHand),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    item.volumeInfo.authors![0],
                    style: Styles.styleRegular14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        // "19.99 €",
                        "Free",
                        style: Styles.styleBold20.copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: "Montserrat-Bold"),
                      ),
                      BookRating(
                        rating: item.volumeInfo.pageCount ?? 0,
                        count: item.volumeInfo.pageCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
