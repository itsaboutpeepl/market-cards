import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'balance_response.freezed.dart';
part 'balance_response.g.dart';

// final balanceProvider =
//     FutureProvider.autoDispose<BalanceResponse>((ref) async {
//   // final balance = await promiseToFuture<double>(fetchBalance());

//   return BalanceResponse(rawBalance: 4232);
// });

final balanceProvider =
    StateNotifierProvider<BalanceNotifier, BalanceResponse>((ref) {
  return BalanceNotifier();
});

class BalanceNotifier extends StateNotifier<BalanceResponse> {
  BalanceNotifier() : super(BalanceResponse(rawBalance: 0));

  void update(double newBalance) {
    state = BalanceResponse(rawBalance: newBalance);
  }
}

@freezed
class BalanceResponse with _$BalanceResponse {
  factory BalanceResponse({required num rawBalance}) = _BalanceResponse;
  const BalanceResponse._();

  factory BalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$BalanceResponseFromJson(json);

  double get balance => num.parse(rawBalance.toStringAsFixed(2)).toDouble();
  double get poundValue =>
      num.parse((rawBalance / 10).toStringAsFixed(2)).toDouble();
  int get balanceNoDec => num.parse(rawBalance.toStringAsFixed(0)).toInt();
  int get poundValueNoDec =>
      num.parse((rawBalance / 10).toStringAsFixed(0)).toInt();
}
