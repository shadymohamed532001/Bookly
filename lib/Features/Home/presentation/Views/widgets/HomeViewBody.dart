import 'package:bookly/Features/Home/presentation/Views/widgets/CustomAppBar.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        const CustomFeaturesListView(),
      ],
    );
  }
}
