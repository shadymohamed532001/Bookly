import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/Home/presentation/Views/widgets/BestSillerListViewItems.dart';
import 'package:bookly/Features/serach/presentation/Views/Widgets/CustomSearchListView.dart';
import 'package:bookly/Features/serach/presentation/Views/Widgets/CustomSearchTextFormFlied.dart';
import 'package:flutter/material.dart';

class SearchViewBody
    extends StatelessWidget {
  const SearchViewBody(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    // ignore: prefer_const_constructors
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(
            child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: CustomSearchTextFormFild(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Movies Results',
                  style: booklyStlyes.textStyle22,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CustomSearchListView()
            ],
          ),
        ))
      ],
    );
  }
}
