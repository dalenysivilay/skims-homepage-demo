import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/widgets/banner_carousel.dart';
import 'package:skims_homepage_mock/src/widgets/footer.dart';
import 'package:skims_homepage_mock/src/widgets/header.dart';

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
            SkimsFooter(),
          ],
        ),
      ),
    );
  }
}
