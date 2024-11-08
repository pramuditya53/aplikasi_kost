import 'package:flutter/material.dart';
import '../../features/detail_screen/screen/DetailScreen.dart';
import '../../data/home/model/HomeModel.dart';

class RouteUtils {
  static void navigateToDetail(BuildContext context, HomeModel place) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(place: place),
      ),
    );
  }
}
