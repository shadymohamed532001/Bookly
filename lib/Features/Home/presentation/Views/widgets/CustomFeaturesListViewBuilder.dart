import 'package:bookly/Features/Home/presentation/Views/widgets/CustomFeaturesListView.dart';
import 'package:bookly/Features/Home/presentation/manager/FeaturedBookCubite/cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFeaturesListViewBuilder extends StatelessWidget {
  const CustomFeaturesListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookFailuers) {
          return Text(state.error);
        } else if (state is FeaturedBookSucsess) {
          return CustomFeaturesListView();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
