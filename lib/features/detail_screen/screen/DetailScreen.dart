import 'package:flutter/material.dart';
import '../../../data/home/model/HomeModel.dart';
import '../../../core/constants/color.dart';
import '../../../core/global_component/ButtonComponent.dart';
import '../../../core/global_component/Typography.dart';

class DetailScreen extends StatelessWidget {
  final HomeModel place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar tempat
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  place.imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              // Judul dan Lokasi
              Text(place.title, style: AppTypography.headline1),
              SizedBox(height: 8),
              Text(place.location, style: AppTypography.subtitle1),
              SizedBox(height: 16),
              // Harga
              Text(
                place.price,
                style: AppTypography.headline1
                    .copyWith(color: AppColors.primaryColor),
              ),
              SizedBox(height: 16),
              // Tombol Booking
              ButtonComponent(
                label: "Booking",
                onPressed: () {
                  // Tambahkan aksi booking di sini
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
