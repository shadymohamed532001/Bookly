import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/customBookRate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSillerListViewItems extends StatelessWidget {
  const BestSillerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    BooklyAssets.TestImage2,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text(
                    'Harry Potter and the Goblet of Fie ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: booklyStlyes.textStyle22.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'J.K. Rowling',
                  style: booklyStlyes.textStyle14,
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: booklyStlyes.textStyle22.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const customBookRate()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
