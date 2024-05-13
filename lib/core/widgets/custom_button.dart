import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.backgroundColor = Colors.white,
      this.textColor = Colors.black,
      this.borderRadius,
      this.fontSize});
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ??
                    const BorderRadius.all(Radius.circular(16))),
            backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.styleSemiBold18
              .copyWith(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
