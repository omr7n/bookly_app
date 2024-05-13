import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.22,
          ),
          child: const CustomBookItem(imageUrl: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAmVBMVEX///9UxfgBV5sptvZOw/hmyvnd8v265fzY8P2lu9NBwfgATZYAUZjx+v7o9v4AsfUuaqUBU5TM2ObR7P0ARZMBUI4osO4AI0EAK0wBTYkBWJ0BR34BQXQGSHoARoABRHkBOmcEKkUANmA+aJEAP3wsY5kGQ3EFPmgANWIFNVgAL1cELk0AJ0kAHzoApOXM0tkANHoYYKC6y97l99FiAAADQElEQVR4nO3cjXKaUBCGYSNqU1uTmoRTFVS0bYz2v/d/cQXEFA1wfkg5uzvfewHOPrPIgRnHXg8hhBBCCCF9ozdtuvc9vr7r8cC98XDie35t1+Mr9wZD3+PrAxBA4gEIIPEABJB4AAJIPAABJB6AABIPQACJByCAxAMQQOIBCCDxAASQeAACSDwAASQegAASD0AAiQcggMQDEEDiAQgg8QAEkHgAAkg8AAEkHoAAEg9AAIkHIIDEAxBA4gEIIPEABJB4AAJIPAABJB6AABLvvwIno1bRB94Mxm26YQActPjwq1f560vCwIF0oPgNAghg1kQ6sNUOeQBbELkAnYl8gI5EDgd9KyKnDToRuQGtifyAlkSOQCsiT6AFkSvQmMgXaEjkDDQi8jroHYi8N2hA5A/UELXAgD6wkagHBgF9YAPRBOhM7BBYSzQDOhI7BdYQTYFOxI6BlURzoAOxc2AF0QZoTezgoH/ZBVELvA3ciR42mHVGtNugJdET8IxoD7QgegOWiC5AY6JH4DPRDWhI9AosiK5AI6JnYE50BxoQvQMzYguglkgAmBKbZ2gGaoheDnrLLg96KyKJDWrSbbCRKAVYS5QDrCFKAlYSZQEriNKAL4jygBdEicAzooyDvoEoc4MlolxgQZQMzImygSmRA3DUAhgEQ/rA3r3DbfQ59cn3+Ca1IKrl5y++xzfJnbhche8/+B7fJEeiSoHTvmDiEdiXS1TLKAeKJf4DCiWml+h8ehJKJKrHdQkokJgBw7JQGrEAloWyiOoxzoFnQklEtYtXFUI5xBQYzcMKoRSi2iXrebVQBlHtntarOqEEoto/xVF0Egokqv0hWR+F1UvkTlRfD0ncLORNTIHbTLiqv0p5E9XmWwo87bBWyJeoNh8PJeHlUxt/YgqcFcL0Kr147pZAzICZML/TpK+G/UU9kCUxBx6FcRT2m30ciUfgbL/dJtFUp+NILICzQxwuFkZAZsQCmMxNddyIOTCZa797bIlq830b9a3Wx4v4Y5aE9jhOxJ+/woazXQTx7sEZCCKZQAQRRBqBCCKINAIRRBBpBCKIINIIRBCZEN+59/CbwQ/8e3dv2/TH9/gIIYQQQuhV+guw4Ja59nVz8QAAAABJRU5ErkJggg==",),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.styleBold30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.styleSemiBold18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        const BooksAction(),
      ],
    );
  }
}
