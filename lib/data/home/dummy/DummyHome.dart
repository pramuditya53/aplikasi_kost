import '../model/HomeModel.dart';

class DummyHome {
  static final List<HomeModel> recommendedPlaces = [
    HomeModel(
      title: 'Cozy Studio Apartment above Shopping MallKost',
      location: 'Jakarta, Indonesia',
      price: 'Rp750.000 / bulan',
      imagePath: 'assets/images/apartment1.jpg',
      rating: 4.8,
    ),
  ];

  static final List<HomeModel> recentlyViewed = [
    HomeModel(
      title: 'Cozy Studio Apartment above Shopping MallKost',
      location: 'Jakarta, Indonesia',
      price: 'Rp700.000 / bulan',
      imagePath: 'assets/images/apartment1.jpg',
      rating: 4.8,
    ),
  ];
}
