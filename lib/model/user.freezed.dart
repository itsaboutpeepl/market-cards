// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get walletAddress => throw _privateConstructorUsedError;
  String? get addressLineOne => throw _privateConstructorUsedError;
  String? get addressCity => throw _privateConstructorUsedError;
  String? get postCode => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String walletAddress,
      String? addressLineOne,
      String? addressCity,
      String? postCode,
      String? email,
      String? phone});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? addressLineOne = freezed,
    Object? addressCity = freezed,
    Object? postCode = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressLineOne: freezed == addressLineOne
          ? _value.addressLineOne
          : addressLineOne // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletAddress,
      String? addressLineOne,
      String? addressCity,
      String? postCode,
      String? email,
      String? phone});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? addressLineOne = freezed,
    Object? addressCity = freezed,
    Object? postCode = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_User(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressLineOne: freezed == addressLineOne
          ? _value.addressLineOne
          : addressLineOne // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {required this.walletAddress,
      required this.addressLineOne,
      required this.addressCity,
      required this.postCode,
      required this.email,
      required this.phone})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String walletAddress;
  @override
  final String? addressLineOne;
  @override
  final String? addressCity;
  @override
  final String? postCode;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'User(walletAddress: $walletAddress, addressLineOne: $addressLineOne, addressCity: $addressCity, postCode: $postCode, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.addressLineOne, addressLineOne) ||
                other.addressLineOne == addressLineOne) &&
            (identical(other.addressCity, addressCity) ||
                other.addressCity == addressCity) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, addressLineOne,
      addressCity, postCode, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {required final String walletAddress,
      required final String? addressLineOne,
      required final String? addressCity,
      required final String? postCode,
      required final String? email,
      required final String? phone}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get walletAddress;
  @override
  String? get addressLineOne;
  @override
  String? get addressCity;
  @override
  String? get postCode;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
