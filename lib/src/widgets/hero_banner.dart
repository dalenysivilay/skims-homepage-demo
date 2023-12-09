import 'package:flutter/material.dart';
import 'package:skims_homepage_demo/src/widgets/cta_button.dart';

class HeroBanner extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const HeroBanner({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    const imageHeight = 570.0;

    return Container(
      height: imageHeight,
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
  final String title;
  final String subtitle;

  const HeroBannerContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    const titleFontSize = 30.0;
    const subTitleFontSize = 16.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: subTitleFontSize,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        CtaButton(
          text: 'Shop Now',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Daleny was here! 🫡 <hi@daleny.dev>',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
