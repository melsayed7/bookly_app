import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({Key? key, required this.mainAxisAlignment})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(1234)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
