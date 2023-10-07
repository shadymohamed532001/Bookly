import 'package:bookly/Features/Home/presentation/Views/widgets/CustomListViewItems.dart';
import 'package:flutter/material.dart';

class CustomFeaturesListView extends StatelessWidget {
  const CustomFeaturesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const CustomListViewItems();
        },
      ),
    );
  }
}
