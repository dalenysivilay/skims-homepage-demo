import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/widgets/cta_button.dart';

class HeroBanner extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const HeroBanner({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 570,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 25,
            bottom: 25,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 300),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: HeroBannerContent(
                title: title,
                subtitle: subtitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeroBannerContent extends StatelessWidget {
  const HeroBannerContent({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        CtaButton(
          text: 'Shop Now',
          onPressed: () {},
        ),
      ],
    );
  }
}
