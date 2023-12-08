import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            IconButtonContainer(
              iconButtons: [
                IconButtonItem(iconData: Icons.favorite_outline),
                IconButtonItem(iconData: Icons.shopping_bag_outlined),
                IconButtonItem(iconData: Icons.menu_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Image.asset(
        'assets/images/skims-logo.png',
        width: 120,
      ),
    );
  }
}

class IconButtonItem extends StatelessWidget {
  final IconData iconData;

  const IconButtonItem({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconData,
          size: 24,
          color: const Color(0xFF625546),
        ),
      ),
    );
  }
}

class IconButtonContainer extends StatelessWidget {
  final List<IconButtonItem> iconButtons;

  const IconButtonContainer({
    super.key,
    required this.iconButtons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconButtons,
    );
  }
}
