import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/screens/home_page.dart';
import 'package:marketing_cards/typography.dart';

class BuyButton extends ConsumerWidget {
  const BuyButton({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(onPayClickProvider).call(productId);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[400],
        fixedSize: const Size(150, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
      child: Text(
        'Buy Now',
        style: buttonStyle,
      ),
    );
  }
}

class BuyButtonCard extends StatelessWidget {
  const BuyButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        fixedSize: const Size(100, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
      child: Text(
        'Buy Now',
        style: buttonStyle.copyWith(fontSize: 18),
      ),
    );
  }
}
