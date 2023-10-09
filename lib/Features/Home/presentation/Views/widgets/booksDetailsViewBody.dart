import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Core/widgets/CustomBottom.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomDetilsViewAppBar.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListViewItems.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/customBookRate.dart';
import 'package:flutter/material.dart';

class booksDetailsViewBody
    extends StatelessWidget {
  const booksDetailsViewBody(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Column(
        children: [
          const CustomDetilsViewAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 150,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.6,
            height: MediaQuery.of(context).size.height / 2.7,
            child: const CustomFeaturesListViewItems(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const Text(
            'The Jungle Book',
            style: booklyStlyes.textStyle30,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Rudyard Kipling',
            style: booklyStlyes.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 137, 133, 147),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customBookRate(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomBottom(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  text: '19.99€',
                  onPressed: () {},
                  backgroundColor: Colors.white,
                ),
              ),
              Expanded(
                child: CustomBottom(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  text: '19.99€',
                  onPressed: () {},
                  backgroundColor: Color(0xffEF8262),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
