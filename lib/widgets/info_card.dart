import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/model/balance_response.dart';
import 'package:marketing_cards/model/peepl_icons.dart';
import 'package:marketing_cards/typography.dart';

class InfoCard extends ConsumerWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final balance = ref.read(balanceProvider);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: const Offset(3, 3),
            color: Colors.grey.shade400,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                PeeplIcons.pplCircles,
                size: 25,
                color: Colors.red,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Rewards',
                style: detailCardTitleStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Divider(
            indent: size.width * 0.1,
            endIndent: size.width * 0.1,
            thickness: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Our rewards stay local to you, because more money '
            'in our local communities has to be a '
            'good idea for our people & our planet',
            style: detailCardDescriptionStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Use your Peepl Tokens '
            '(${balance.balanceNoDec}) '
            'and save £${balance.poundValueNoDec}',
            style: detailCardSubtitleStyle.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Learn more: itsaboutpeepl.com',
            style: smallTextStyle,
          ),
        ],
      ),
    );
  }
}
