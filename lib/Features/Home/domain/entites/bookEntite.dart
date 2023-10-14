import 'package:hive/hive.dart';

part 'bookEntite.g.dart';

@HiveType(typeId: 0)
class BookEntite {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String bookid;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final String title;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntite({
    required this.bookid,
    required this.price,
    required this.rating,
    required this.image,
    required this.authorName,
    required this.title,
  });
}
