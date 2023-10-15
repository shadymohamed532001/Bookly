import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:hive/hive.dart';

void SaveBoxData(List<BookEntite> books, String BoxName) {
  var box = Hive.box<BookEntite>(BoxName);
  box.addAll(books);
}
