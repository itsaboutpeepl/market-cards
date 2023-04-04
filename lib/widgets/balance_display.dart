import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/model/balance_response.dart';
import 'package:marketing_cards/model/peepl_icons.dart';
import 'package:marketing_cards/typography.dart';

class BalanceDisplay extends ConsumerWidget {
  const BalanceDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balance = ref.watch(balanceProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: const Offset(3, 3),
            color: Colors.grey.shade800,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            PeeplIcons.pplCircles,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              '${balance.balance}',
              style: balanceStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              '(£${balance.poundValue})',
              style: balanceStyle.copyWith(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildError(Object error, StackTrace stackTrace) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: Colors.white,
  //       boxShadow: [
  //         BoxShadow(
  //           blurRadius: 5,
  //           offset: const Offset(3, 3),
  //           color: Colors.grey.shade800,
  //         ),
  //       ],
  //     ),
  //     child: Center(
  //       child: Text(
  //         'Balance not avaliable',
  //         style: balanceStyle.copyWith(fontSize: 14),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildDisplay(BalanceResponse data) {
  //   return
  // }
}
