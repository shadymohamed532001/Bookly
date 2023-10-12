class BookEntite {
  final String?
      image;

  final String
      bookid;

  final String?
      authorName;
  final String
      title;

  final num?
      price;
  final num?
      rating;

  BookEntite({
    required this.bookid,
    required this.price,
    required this.rating,
    required this.image,
    required this.authorName,
    required this.title,
  });
}
