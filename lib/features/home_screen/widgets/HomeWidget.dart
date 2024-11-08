import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/global_component/Typography.dart';
import '../controller/HomeController.dart';
import '../../order_screen/screen/OrderScreen.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Hai Kamu,\nCari apa hari ini?',
              style: AppTypography.headline1,
            ),
            SizedBox(height: 20),

            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari kost disini',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.account_circle, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Kategori Filter
            Text(
              'Rekomendasi Kami',
              style:
                  AppTypography.subtitle1.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                _buildCategoryButton('Apartment', true),
                SizedBox(width: 8),
                _buildCategoryButton('Kost', false),
                SizedBox(width: 8),
                _buildCategoryButton('Kontrakan', false),
              ],
            ),
            SizedBox(height: 20),

            // Rekomendasi Teratas dengan Navigasi
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 40, 219, 204),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cozy studio apartment above shopping Mallkost',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Text("4.8", style: TextStyle(color: Colors.white)),
                        SizedBox(width: 8),
                        Icon(Icons.location_on, color: Colors.white, size: 20),
                        Text("Jakarta, Indonesia",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Terakhir Dilihat
            Text(
              'Terakhir Dilihat',
              style:
                  AppTypography.subtitle1.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: homeController.recentlyViewed.length,
              itemBuilder: (context, index) {
                final place = homeController.recentlyViewed[index];
                return Card(
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                place.imagePath,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(place.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 4),
                                  Text(place.location),
                                  SizedBox(height: 4),
                                  Text(place.price,
                                      style: TextStyle(color: Colors.teal)),
                                  SizedBox(height: 4),
                                  Text("Update 2 hari lalu",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        // Fasilitas
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildFacilityIcon(Icons.bathroom, 'K.M Dalam'),
                            _buildFacilityIcon(Icons.bed, 'Kasur'),
                            _buildFacilityIcon(Icons.wifi, 'Wi-Fi'),
                            _buildFacilityIcon(Icons.ac_unit, 'AC'),
                            _buildFacilityIcon(Icons.tv, 'Televisi'),
                          ],
                        ),
                        SizedBox(height: 12),

                        // Tombol Book Now
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text('Book Now'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk tombol kategori
  Widget _buildCategoryButton(String label, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.teal : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  // Fungsi untuk ikon fasilitas
  Widget _buildFacilityIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 24, color: Colors.grey),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
