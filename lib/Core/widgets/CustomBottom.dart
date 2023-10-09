import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom
    extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    this.onPressed,
    this.textcolor,
  });

  final BorderRadiusGeometry?
      borderRadius;

  final Color?
      textcolor;
  final String
      text;
  final Color
      backgroundColor;
  final void Function()?
      onPressed;

  @override
  Widget
      build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: booklyStlyes.textStyle18.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
