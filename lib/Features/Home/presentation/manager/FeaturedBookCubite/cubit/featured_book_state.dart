part of 'featured_book_cubit.dart';

@immutable
sealed class FeaturedBookState {}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoading extends FeaturedBookState {}

final class FeaturedBookFailuers extends FeaturedBookState {
  final String error;

  FeaturedBookFailuers({required this.error});
}

final class FeaturedBookSucsess extends FeaturedBookState {
  final List<BookEntite> Featuredbooks;

  FeaturedBookSucsess({required this.Featuredbooks});
}
