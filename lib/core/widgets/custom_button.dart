import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColorBtn,
    required this.textColorBtn,
    required this.borderRadius,
    required this.text,
    required this.fontWeight,
  }) : super(key: key);

  final Color backgroundColorBtn;

  final Color textColorBtn;

  final BorderRadius borderRadius;

  final String text;

  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColorBtn,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColorBtn,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
