import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skims_homepage_demo/src/widgets/product_card.dart';
import 'package:skims_homepage_demo/src/models/product_model.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 0.5,
            enableInfiniteScroll: true,
            height: 350,
          ),
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final productData = productList[index];
            return Builder(
              builder: (BuildContext context) {
                return ProductCard(
                  image: productData.imageUrl,
                  name: productData.name,
                  price: productData.price,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
