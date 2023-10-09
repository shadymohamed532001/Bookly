import 'package:bookly/Core/widgets/CustomBottom.dart';
import 'package:flutter/material.dart';

class CustomBookActions
    extends StatelessWidget {
  const CustomBookActions({
    super.key,
  });

  @override
  Widget
      build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomBottom(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99€',
              onPressed: () {},
              textcolor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomBottom(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: '19.99€',
              onPressed: () {},
              textcolor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
            ),
          ),
        ],
      ),
    );
  }
}
