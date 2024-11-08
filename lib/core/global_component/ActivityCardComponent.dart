import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../global_component/Typography.dart';
import '../../data/home/model/HomeModel.dart';
import '../../features/order_screen/screen/OrderScreen.dart';

class ActivityCardComponent extends StatelessWidget {
  final HomeModel place;

  ActivityCardComponent({required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke OrderScreen ketika kartu diketuk
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderScreen(),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                place.imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.title,
                    style: AppTypography.headline1,
                  ),
                  SizedBox(height: 8),
                  Text(
                    place.location,
                    style: AppTypography.subtitle1,
                  ),
                  SizedBox(height: 8),
                  Text(
                    place.price,
                    style: AppTypography.bodyText.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
