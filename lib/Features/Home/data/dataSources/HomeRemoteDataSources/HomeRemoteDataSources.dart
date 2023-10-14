// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Constance.dart';
import 'package:bookly/Core/utils/apiServices.dart';
import 'package:bookly/Core/utils/functions.dart';
import 'package:bookly/Features/Home/data/models/book_models/book_models.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';

abstract class HomeRemoteDataSoureces {
  Future<List<BookEntite>>
      featchFeaturedBook();

  Future<List<BookEntite>>
      featchNewsBook();
}

class HomeRemoteDataSourecesImpl
    extends HomeRemoteDataSoureces {
  final ApiServices
      apiServices;

  HomeRemoteDataSourecesImpl(
      {required this.apiServices});
  @override
  Future<List<BookEntite>>
      featchFeaturedBook() async {
    var date =
        await apiServices.GetServices(endPoint: 'volumes?Filtering=free-ebooks&q=programing');

    List<BookEntite>
        books =
        GetBookList(date);

    SaveBoxData(books,
        KFeaturedbox);

    return books;
  }

  @override
  Future<List<BookEntite>>
      featchNewsBook() async {
    var date =
        await apiServices.GetServices(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest-&q=programing');

    List<BookEntite>
        books =
        GetBookList(date);
    return books;
  }

  List<BookEntite>
      GetBookList(Map<String, dynamic> date) {
    List<BookEntite>
        books =
        [];

    for (var bookmap
        in date['items']) {
      books.add(BookModels.fromJson(bookmap));
    }
    return books;
  }
}
