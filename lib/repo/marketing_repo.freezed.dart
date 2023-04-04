// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketing_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketingCardsReponse {
  int get totalCount => throw _privateConstructorUsedError;
  List<MarketingCard> get cards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketingCardsReponseCopyWith<MarketingCardsReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingCardsReponseCopyWith<$Res> {
  factory $MarketingCardsReponseCopyWith(MarketingCardsReponse value,
          $Res Function(MarketingCardsReponse) then) =
      _$MarketingCardsReponseCopyWithImpl<$Res, MarketingCardsReponse>;
  @useResult
  $Res call({int totalCount, List<MarketingCard> cards});
}

/// @nodoc
class _$MarketingCardsReponseCopyWithImpl<$Res,
        $Val extends MarketingCardsReponse>
    implements $MarketingCardsReponseCopyWith<$Res> {
  _$MarketingCardsReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<MarketingCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketingCardsReponseCopyWith<$Res>
    implements $MarketingCardsReponseCopyWith<$Res> {
  factory _$$_MarketingCardsReponseCopyWith(_$_MarketingCardsReponse value,
          $Res Function(_$_MarketingCardsReponse) then) =
      __$$_MarketingCardsReponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<MarketingCard> cards});
}

/// @nodoc
class __$$_MarketingCardsReponseCopyWithImpl<$Res>
    extends _$MarketingCardsReponseCopyWithImpl<$Res, _$_MarketingCardsReponse>
    implements _$$_MarketingCardsReponseCopyWith<$Res> {
  __$$_MarketingCardsReponseCopyWithImpl(_$_MarketingCardsReponse _value,
      $Res Function(_$_MarketingCardsReponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? cards = null,
  }) {
    return _then(_$_MarketingCardsReponse(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<MarketingCard>,
    ));
  }
}

/// @nodoc

class _$_MarketingCardsReponse implements _MarketingCardsReponse {
  _$_MarketingCardsReponse(
      {required this.totalCount, required final List<MarketingCard> cards})
      : _cards = cards;

  @override
  final int totalCount;
  final List<MarketingCard> _cards;
  @override
  List<MarketingCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'MarketingCardsReponse(totalCount: $totalCount, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketingCardsReponse &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketingCardsReponseCopyWith<_$_MarketingCardsReponse> get copyWith =>
      __$$_MarketingCardsReponseCopyWithImpl<_$_MarketingCardsReponse>(
          this, _$identity);
}

abstract class _MarketingCardsReponse implements MarketingCardsReponse {
  factory _MarketingCardsReponse(
      {required final int totalCount,
      required final List<MarketingCard> cards}) = _$_MarketingCardsReponse;

  @override
  int get totalCount;
  @override
  List<MarketingCard> get cards;
  @override
  @JsonKey(ignore: true)
  _$$_MarketingCardsReponseCopyWith<_$_MarketingCardsReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  List<dynamic> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call({List<dynamic> results});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$_ApiResponseCopyWith(
          _$_ApiResponse value, $Res Function(_$_ApiResponse) then) =
      __$$_ApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> results});
}

/// @nodoc
class __$$_ApiResponseCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$_ApiResponse>
    implements _$$_ApiResponseCopyWith<$Res> {
  __$$_ApiResponseCopyWithImpl(
      _$_ApiResponse _value, $Res Function(_$_ApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_ApiResponse(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponse implements _ApiResponse {
  _$_ApiResponse(final List<dynamic> results) : _results = results;

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseFromJson(json);

  final List<dynamic> _results;
  @override
  List<dynamic> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ApiResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      __$$_ApiResponseCopyWithImpl<_$_ApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseToJson(
      this,
    );
  }
}

abstract class _ApiResponse implements ApiResponse {
  factory _ApiResponse(final List<dynamic> results) = _$_ApiResponse;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse.fromJson;

  @override
  List<dynamic> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
