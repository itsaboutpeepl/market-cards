import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos.freezed.dart';
part 'photos.g.dart';

@freezed
class Photos with _$Photos {
  factory Photos({
    required int id,
    @JsonKey(name: 'product_id') required int productId,
    required String url,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
