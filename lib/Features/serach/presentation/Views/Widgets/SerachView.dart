import 'package:bookly/Features/serach/presentation/Views/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView
    extends StatelessWidget {
  const SearchView(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return const Scaffold(
      body: SearchViewBody(),
    );
  }
}
