import 'package:bookly/Constance.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSoureces {
  List<BookEntite> featchFeaturedBook();

  List<BookEntite> featchNewsBook();
}

class HomeLocalDataSourecesImpl extends HomeLocalDataSoureces {
  @override
  List<BookEntite> featchFeaturedBook() {
    var box = Hive.box<BookEntite>(KFeaturedbox);
    return box.values.toList();
  }

  @override
  List<BookEntite> featchNewsBook() {
    var box = Hive.box<BookEntite>(KNewsbox);

    return box.values.toList();
  }
}
