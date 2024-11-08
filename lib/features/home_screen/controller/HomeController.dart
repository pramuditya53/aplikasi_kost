import 'package:flutter/material.dart';
import '../../../data/home/dummy/DummyHome.dart';
import '../../../data/home/model/HomeModel.dart';

class HomeController extends ChangeNotifier {
  List<HomeModel> recommendedPlaces = [];
  List<HomeModel> recentlyViewed = [];

  HomeController() {
    loadDummyData();
  }

  void loadDummyData() {
    recommendedPlaces = DummyHome.recommendedPlaces;
    recentlyViewed = DummyHome.recentlyViewed;
    notifyListeners();
  }
}
