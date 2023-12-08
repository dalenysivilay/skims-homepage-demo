class HeroBannerModel {
  final String image;
  final String title;
  final String subtitle;

  HeroBannerModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

final List<HeroBannerModel> heroBannerData = [
  HeroBannerModel(
    image: 'assets/images/skims-holiday-home-banner.jpeg',
    title: 'SKIMS HOLIDAY SHOP',
    subtitle:
        'Over 15 limited-edition collections with something SKIMS for everyone on your list',
  ),
  HeroBannerModel(
    image: 'assets/images/skims-new-boyfriend-banner.jpeg',
    title: 'JUST DROPPED NEW BOYFRIEND',
    subtitle:
        'Reunited with our super soft, perfectly oversized lounge – and it feels so good',
  ),
];
