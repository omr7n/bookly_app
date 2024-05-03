import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        height: 125,
        child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 29, 126, 174),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
        ),
            ),
      ),
  

      Column(children: [],)
      
    ],);
  }
}
