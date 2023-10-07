import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customBookRate extends StatelessWidget {
  const customBookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: booklyStlyes.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: booklyStlyes.textStyle16.copyWith(
              // fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 101, 95, 120)),
        ),
      ],
    );
  }
}
