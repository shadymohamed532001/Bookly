import 'package:bookly/Features/Home/presentation/Views/widgets/booksDetailsViewBody.dart';
import 'package:flutter/material.dart';

class booksDetailsView extends StatelessWidget {
  const booksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: booksDetailsViewBody(),
      ),
    );
  }
}
