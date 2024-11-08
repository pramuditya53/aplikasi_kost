import 'package:flutter/material.dart';
import '../../../core/global_component/Typography.dart';
import '../../../core/constants/color.dart';

class ApartmentRecommendationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data dummy rekomendasi apartemen
    final List<Map<String, String>> apartments = [
      {'name': 'Green Lake Apartment', 'location': 'Jakarta'},
      {'name': 'Lavender Apartment', 'location': 'Bandung'},
      {'name': 'Blue Sky Apartment', 'location': 'Surabaya'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rekomendasi Apartemen',
          style:
              AppTypography.headline1.copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(height: 12),
        Column(
          children: apartments.map((apartment) {
            return Card(
              margin: EdgeInsets.only(bottom: 8),
              child: ListTile(
                title: Text(apartment['name'] ?? ''),
                subtitle: Text(apartment['location'] ?? ''),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // Aksi saat apartemen di klik
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
