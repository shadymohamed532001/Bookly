import 'package:bookly/Features/Home/presentation/Views/widgets/CustomDetilsViewAppBar.dart';
import 'package:flutter/material.dart';

class booksDetailsViewBody extends StatelessWidget {
  const booksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: const Column(
        children: [
          CustomDetilsViewAppBar(),
        ],
      ),
    );
  }
}
