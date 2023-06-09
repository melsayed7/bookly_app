import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              fontWeight: FontWeight.bold,
              backgroundColorBtn: Colors.white,
              textColorBtn: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              fontWeight: FontWeight.w400,
              backgroundColorBtn: Color(0xffEF8262),
              textColorBtn: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
