import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:meta/meta.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
