import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/BestSillerListView.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/BestSillerListViewItems.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomAppBar.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              const CustomFeaturesListView(),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Best Siller',
                  style: booklyStlyes.textStyle22,
                ),
              ),
              const BestSillerListView()
            ],
          ),
        )
      ],
    );
  }
}
