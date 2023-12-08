import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skims_homepage_mock/src/models/hero_banner_model.dart';
import 'hero_banner.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentIndex = 0;
  bool isPaused = false;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 570.0,
            viewportFraction: 1.0,
            autoPlay: !isPaused,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemCount: heroBannerData.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final bannerData = heroBannerData[index];
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      HeroBanner(
                        image: bannerData.image,
                        title: bannerData.title,
                        subtitle: bannerData.subtitle,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: PagninationBuilder(currentIndex: _currentIndex),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: PauseButtonBuilder(
            isPaused: isPaused,
            togglePause: () {
              setState(() {
                isPaused = !isPaused;
              });
            },
          ),
        ),
      ],
    );
  }
}

class PauseButtonBuilder extends StatelessWidget {
  final bool isPaused;
  final VoidCallback togglePause;

  const PauseButtonBuilder({
    super.key,
    required this.isPaused,
    required this.togglePause,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isPaused ? Icons.play_arrow : Icons.pause,
        color: Colors.white,
        size: 32,
      ),
      onPressed: togglePause,
    );
  }
}

class PagninationBuilder extends StatelessWidget {
  const PagninationBuilder({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < heroBannerData.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: currentIndex == i ? Colors.white : Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
