import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/screens/home_page.dart';
import 'package:marketing_cards/typography.dart';

class BuyButton extends ConsumerStatefulWidget {
  const BuyButton({super.key, required this.productId});

  final String productId;

  @override
  ConsumerState<BuyButton> createState() => _BuyButtonState();
}

class _BuyButtonState extends ConsumerState<BuyButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ref.read(onPayClickProvider).call(widget.productId);
        _isLoading = true;
        Future.delayed(const Duration(seconds: 5), () {
          if (context.mounted) {
            setState(() {
              _isLoading = false;
            });
          }
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[400],
        fixedSize: const Size(150, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
      child: _isLoading
          ? const CircularProgressIndicator(
              color: Colors.red,
            )
          : Text(
              'Buy Now',
              style: buttonStyle,
            ),
    );
  }
}
