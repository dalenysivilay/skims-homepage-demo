import 'package:flutter/material.dart';

class PencilBanner extends StatelessWidget {
  final String message;

  const PencilBanner({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF625546),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
          backgroundColor: const Color(0xFFEEE6DA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
