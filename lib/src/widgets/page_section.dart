import 'package:flutter/material.dart';

class PageSection extends StatelessWidget {
  final String sectionTitle;
  final List<Widget> children;

  const PageSection({
    super.key,
    required this.sectionTitle,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Text(
          sectionTitle.toUpperCase(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF625546),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ...children,
      ],
    );
  }
}
