import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomFeaturesListViewItems extends StatelessWidget {
  const CustomFeaturesListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: Colors.white,
          image: const DecorationImage(
            image: AssetImage(
              BooklyAssets.TestImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
