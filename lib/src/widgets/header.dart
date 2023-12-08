import 'package:flutter/material.dart';
import 'package:skims_homepage_mock/src/widgets/pencil_banner.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PencilBanner(
          message: 'FREE SHIPPING ON ALL DOMESTIC ORDERS 75+',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'SKIMS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.search_outlined, size: 30),
            Icon(Icons.favorite_outline, size: 30),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            Icon(Icons.menu, size: 30),
          ],
        ),
      ],
    );
  }
}
