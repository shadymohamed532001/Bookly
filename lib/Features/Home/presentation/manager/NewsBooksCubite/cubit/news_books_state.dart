part of 'news_books_cubit.dart';

@immutable
sealed class NewsBooksState {}

final class NewsBooksInitial extends NewsBooksState {}

final class NewsBooksLoading extends NewsBooksState {}

final class NewsBooksFailuers extends NewsBooksState {
  final String error;

  NewsBooksFailuers({required this.error});
}

final class NewsBooksSucess extends NewsBooksState {
  final List<BookEntite> NewsBooks;

  NewsBooksSucess({required this.NewsBooks});
}
