import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled(
      {super.key, required this.hintText, required this.icons});
  final String hintText;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Opacity(
            opacity: 0.8,
            child: Icon(
              icons,
              size: 22,
            )),
        hintText: hintText,
       // fillColor: const Color(0xFFFAFAFA),
       // filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)),
        borderRadius: BorderRadius.circular(12));
  }
}
