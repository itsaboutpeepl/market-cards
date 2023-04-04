import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:js/js_util.dart';
import 'package:marketing_cards/model/webview_handlers.dart';
import 'package:riverpod/riverpod.dart';

part 'user.freezed.dart';
part 'user.g.dart';

final userProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<User>>((ref) {
  return UserNotifier();
});

@freezed
class User with _$User {
  factory User({
    required String walletAddress,
    required String? addressLineOne,
    required String? addressCity,
    required String? postCode,
    required String? email,
    required String? phone,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // bool get isValid {
  //   if (walletAddress.isNotEmpty &&
  //       addressLineOne.isNotEmpty &&
  //       addressCity.isNotEmpty &&
  //       postCode.isNotEmpty &&
  //       email.isNotEmpty &&
  //       email.isNotEmpty &&
  //       phone.isNotEmpty) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}

class UserNotifier extends StateNotifier<AsyncValue<User>> {
  UserNotifier() : super(const AsyncValue.loading()) {
    fetchLoopWithDelay(const Duration(seconds: 15));
  }

  Future<void> fetchLoopWithDelay(Duration delay) async {
    while (true) {
      try {
        final data = await UserService().fetchUserDataFromDevice();
        state = AsyncValue.data(data);
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }

      await Future<void>.delayed(delay);
    }
  }
}

class UserService {
  Future<User> fetchUserDataFromDevice() async {
    //final resp = dartify(await promiseToFuture(fetchUserData()));

    // jsonEncode(resp);

    // var temp = jsonDecode(jsonEncode(resp));

    // print(resp);
    // print(resp.runtimeType);
    // print(temp);
    // print(temp.runtimeType);

    var temp = {};

    //final user = User.fromJson(resp as Map<String, dynamic>);

    final user = User(
      walletAddress: temp!['walletAddress'] as String? ?? '',
      addressLineOne: temp['addressLineOne'] as String? ?? '',
      addressCity: temp['addressCity'] as String? ?? '',
      postCode: temp['postCode'] as String? ?? '',
      email: temp['email'] as String? ?? '',
      phone: temp['phone'] as String? ?? '',
    );

    print(user);

    return user;

    // if (user.isValid) {
    //   return user;
    // } else {
    //   throw Exception('User data is invalid');
    // }
  }
}
