import 'package:bookly/Features/Home/presentation/Views/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar()],
    );
  }
}
