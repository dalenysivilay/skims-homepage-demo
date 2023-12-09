import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final int price;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _dialogBuilder(context, image, name, price);
      },
      child: Column(
        children: [
          SizedBox(
            child: Image.network(image),
          ),
          Text(
            name.toUpperCase(),
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xFF625546),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            '\$' '$price',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF625546),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

Future<void> _dialogBuilder(
    BuildContext context, String image, String name, int price) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
          child: Text(
            'View Product'.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFF625546),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        content: Container(
          height: 350,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ProductCard(
            image: image,
            name: name,
            price: price,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Color(0xFF625546),
                size: 24,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_shopping_cart_outlined,
                color: Color(0xFF625546),
                size: 24,
              ),
            ),
          ),
        ],
        actionsAlignment: MainAxisAlignment.spaceBetween,
      );
    },
  );
}
