// OrderScreen.dart

import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/global_component/ButtonComponent.dart';
import '../../../core/global_component/Typography.dart';
import '../../booking_screen/screen/BookingScreen.dart';
import 'package:provider/provider.dart';
import '../../booking_screen/controller/BookingController.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
              child: Image.asset(
                'assets/images/apartment1.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cozy Studio Apartment above Shopping MallKost',
                    style: AppTypography.headline1,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey, size: 20),
                      SizedBox(width: 4),
                      Text(
                        'Jakarta, Indonesia',
                        style: AppTypography.subtitle1
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text('4.8', style: AppTypography.subtitle1),
                      Spacer(),
                      Text(
                        'Update 2 hari lalu',
                        style:
                            AppTypography.bodyText.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.electrical_services,
                          color: Colors.grey, size: 20),
                      SizedBox(width: 4),
                      Text('Termasuk Listrik', style: AppTypography.bodyText),
                      Spacer(),
                      Icon(Icons.check, color: Colors.grey, size: 20),
                      SizedBox(width: 4),
                      Text('Tidak ada min. bayar',
                          style: AppTypography.bodyText),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('Luas Kamar', style: AppTypography.headline1),
                  SizedBox(height: 4),
                  Text('3 x 5m', style: AppTypography.subtitle1),
                  SizedBox(height: 16),
                  Text('Fasilitas', style: AppTypography.headline1),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.bathroom, size: 30, color: Colors.grey),
                          SizedBox(height: 4),
                          Text('K.M Dalam', style: AppTypography.bodyText),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.bed, size: 30, color: Colors.grey),
                          SizedBox(height: 4),
                          Text('Kasur', style: AppTypography.bodyText),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.wifi, size: 30, color: Colors.grey),
                          SizedBox(height: 4),
                          Text('Wi-Fi', style: AppTypography.bodyText),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.ac_unit, size: 30, color: Colors.grey),
                          SizedBox(height: 4),
                          Text('AC', style: AppTypography.bodyText),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.tv, size: 30, color: Colors.grey),
                          SizedBox(height: 4),
                          Text('Televisi', style: AppTypography.bodyText),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Rp700.000 / bulan',
                        style: AppTypography.headline1
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      Spacer(),
                      ButtonComponent(
                        label: "Booking",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                create: (_) => BookingController(),
                                child: BookingScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
