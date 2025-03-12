class NikeShoes {
  NikeShoes({
    required this.model,
    required this.oldPrice,
    required this.currentPrice,
    required this.images,
    required this.modelNumber,
  });
  final String model;
  final double oldPrice;
  final double currentPrice;
  final List<String> images;
  final int modelNumber;
}

final shoes = <NikeShoes>[
  NikeShoes(
    model: 'AIR MAX 90 EZ BLACK',
    currentPrice: 149,
    oldPrice: 299,
    images: [
      'assets/nike_shoes_store/shoes1_1.png'
          'assets/nike_shoes_store/shoes1_2.png'
          'assets/nike_shoes_store/shoes1_3.png'
    ],
    modelNumber: 90,
  ),
];
