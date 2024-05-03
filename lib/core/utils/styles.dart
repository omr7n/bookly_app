import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const styleSemiBold18 = TextStyle(
    //color:  Color(0xFF064060),
    // fontFamily: "Montserrat",

    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const styleBold20 = TextStyle(

    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const styleBold30 = TextStyle(
    fontFamily: kBriemHand,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );
  static const styleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static const styleRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
