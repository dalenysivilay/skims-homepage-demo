import 'package:flutter/material.dart';

class SliderMenu extends StatelessWidget {
  const SliderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              child: Text(
                'YOUR CART',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('Option 1'),
              onTap: () {
                // Handle option 1 tap
              },
            ),
            ListTile(
              title: const Text('Option 2'),
              onTap: () {
                // Handle option 2 tap
              },
            ),
            // Add more menu options as needed
          ],
        ),
      ),
    );
  }
}
