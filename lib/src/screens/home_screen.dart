import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/widgets/header.dart';
import 'package:skims_homepage_mock/src/widgets/hero_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Header(),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: HeroBanner(
                image: 'assets/images/skims-holiday-home-banner.jpeg',
                title: 'SKIMS HOLIDAY SHOP',
                subtitle:
                    'Over 15 limited-edition collections with something SKIMS for everyone on your list',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
