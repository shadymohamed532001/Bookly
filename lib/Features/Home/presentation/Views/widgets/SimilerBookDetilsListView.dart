import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListViewItems.dart';
import 'package:flutter/material.dart';

class SimilerBookDetilsListView
    extends StatelessWidget {
  const SimilerBookDetilsListView(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5.7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomFeaturesListViewItems();
        },
      ),
    );
  }
}
