import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/useCases/featchFeaturedBookUseCase.dart';
import 'package:flutter/material.dart';
part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.featchFeaturedBooUseCase)
      : super(FeaturedBookInitial());
  final FeatchFeaturedBooUseCase featchFeaturedBooUseCase;

  Future<void> featchFeaturedBooks() async {
    emit(FeaturedBookLoading());

    var result = await featchFeaturedBooUseCase.call();

    result.fold((Failuer) {
      emit(FeaturedBookFailuers(error: Failuer.massage));
    }, (books) {
      emit(FeaturedBookSucsess(Featuredbooks: books));
    });
  }
}
