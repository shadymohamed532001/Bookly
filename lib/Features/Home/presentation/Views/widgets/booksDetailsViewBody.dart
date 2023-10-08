import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomDetilsViewAppBar.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListViewItems.dart';
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
            height: MediaQuery.of(context).size.height / 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.6,
            height: MediaQuery.of(context).size.height / 2.7,
            child: const CustomFeaturesListViewItems(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text('The Jungle Book', style: booklyStlyes.textStyle24)
        ],
      ),
    );
  }
}
