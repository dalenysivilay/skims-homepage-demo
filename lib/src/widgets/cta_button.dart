import 'package:flutter/material.dart';

class CtaButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isDisabled;

  const CtaButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: isDisabled ? null : onPressed,
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF625546),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
          backgroundColor: isDisabled ? Colors.grey : const Color(0xFFEEE6DA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF625546),
          ),
        ),
      ),
    );
  }
}
