class ProductModel {
  final String id;
  final String name;
  final String imageUrl;
  final String link;
  final int price;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.link,
    required this.price,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: '1',
    name: 'Boyfriend T-Shirt',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/files/SKIMS-LOUNGEWEAR-AP-TSH-0462-SLT_medium.jpg?v=1701384006',
    link: '/products/boyfriend-t-shirt-sleet',
    price: 44,
  ),
  ProductModel(
    id: '2',
    name: 'Boyfriend Loose Boxer',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/products/SKIMS-LOUNGEWEAR-AP-BOX-2386-CMB_medium.jpg?v=1676690106',
    link: '/products/boyfriend-loose-boxer-cherry-blossom',
    price: 33,
  ),
  ProductModel(
    id: '3',
    name: 'Boyfriend Long Sleeve T-Shirt',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/files/SKIMS-AP-LGS-0585-SLT_medium.jpg?v=1701383912',
    link: '/products/boyfriend-long-sleeve-t-shirt-sleet',
    price: 48,
  ),
  ProductModel(
    id: '4',
    name: 'Fleece Lounge Track Jacket',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/files/SKIMS-FLEECELOUNGE-LOUNGEWEAR-TP-ZUP-4508-ONX_medium.jpg?v=1701112645',
    link: '/products/fleece-lounge-track-jacket-onyx',
    price: 78,
  ),
  ProductModel(
    id: '5',
    name: 'Boyfriend Boxer',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/products/SKIMS-LOUNGEWEAR-AP-BOX-0461-CMB_medium.jpg?v=1676689609',
    link: '/products/boyfriend-boxer-cherry-blossom',
    price: 28,
  ),
  ProductModel(
    id: '6',
    name: 'Boyfriend Crop Tank',
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0259/5448/4284/products/SKIMS-LOUNGEWEAR-AP-TNK-1372-CMB_medium.jpg?v=1676689854',
    link: '/products/boyfriend-crop-tank-cherry-blossom',
    price: 36,
  ),
];
