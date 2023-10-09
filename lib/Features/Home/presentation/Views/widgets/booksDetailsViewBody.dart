import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomBookActions.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomDetilsViewAppBar.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListViewItems.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/SimilerBookDetilsListView.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/customBookRate.dart';
import 'package:flutter/material.dart';

class booksDetailsViewBody
    extends StatelessWidget {
  const booksDetailsViewBody(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.all(9),
            child: Column(
              children: [
                BookDetailSections(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilerBookDetilsListViewSections(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookDetailSections
    extends StatelessWidget {
  const BookDetailSections(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return Column(
      children: [
        const CustomDetilsViewAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 150,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.6,
          height: MediaQuery.of(context).size.height / 2.7,
          child: const CustomListViewItemsphoto(),
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
        const SizedBox(
          height: 33,
        ),
        const CustomBookActions(),
      ],
    );
  }
}

class SimilerBookDetilsListViewSections
    extends StatelessWidget {
  const SimilerBookDetilsListViewSections(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: booklyStlyes.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SimilerBookDetilsListView(),
      ],
    );
  }
}
