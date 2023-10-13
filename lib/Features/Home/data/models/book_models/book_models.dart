import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModels
    extends BookEntite {
  String?
      kind;
  String?
      id;
  String?
      etag;
  String?
      selfLink;
  VolumeInfo?
      volumeInfo;
  SaleInfo?
      saleInfo;
  AccessInfo?
      accessInfo;
  SearchInfo?
      searchInfo;

  BookModels({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          bookid: id!,
          price: saleInfo?.listPrice?.amount,
          rating: 0.0,
          image: volumeInfo?.imageLinks?.thumbnail ?? '',
          authorName: volumeInfo?.authors?.first ?? 'No Name',
          title: volumeInfo!.title!,
        );

  factory BookModels.fromJson(Map<String, dynamic> json) =>
      BookModels(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null ? null : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null ? null : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null ? null : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null ? null : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() =>
      {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
      };
}
