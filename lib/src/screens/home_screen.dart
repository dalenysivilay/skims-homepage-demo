import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/widgets/banner_carousel.dart';
import 'package:skims_homepage_mock/src/widgets/skims_footer.dart';
import 'package:skims_homepage_mock/src/widgets/skims_header.dart';
import 'package:skims_homepage_mock/src/widgets/product_carousel.dart';
import 'package:skims_homepage_mock/src/widgets/page_section.dart';
import 'package:skims_homepage_mock/src/widgets/slider_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SkimsHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerCarousel(),
            PageSection(
              sectionTitle: 'New Arrivals',
              children: [
                ProductCarousel(),
                SectionButtonBuilder(),
              ],
            ),
            SizedBox(height: 50),
            SkimsFooter(),
          ],
        ),
      ),
      endDrawer: SliderMenu(),
    );
  }
}

class SectionButtonBuilder extends StatefulWidget {
  const SectionButtonBuilder({
    super.key,
  });

  @override
  State<SectionButtonBuilder> createState() => _SectionButtonBuilderState();
}

class _SectionButtonBuilderState extends State<SectionButtonBuilder> {
  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextButton(
        onPressed: isDisabled ? null : () => _onPressed(),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          foregroundColor: const Color(0xFF625546),
          backgroundColor: isDisabled
              ? const Color(
                  0xFFA0A0A0) // Use a different color for disabled state
              : const Color(0xFF625546),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        child: Text(
          'Shop All New Arrivals'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _onPressed() {
    setState(
      () {
        isDisabled = true;
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
        isDisabled = false;
      },
    );
  }
}
