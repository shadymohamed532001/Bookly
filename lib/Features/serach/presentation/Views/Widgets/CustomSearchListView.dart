import 'package:bookly/Features/Home/presentation/Views/widgets/BestSillerListViewItems.dart';
import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: BestSillerListViewItems(),
        );
      },
    );
  }
}
