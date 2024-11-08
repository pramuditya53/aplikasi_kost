// feature/bookingscreen/BookingScreen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/BookingController.dart';
import '../widgets/BookingWidget.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookingController = Provider.of<BookingController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih Metode Pembayaran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: BookingWidget(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                bookingController.confirmBooking();
                Navigator.pop(context);
              },
              child: Text('Konfirmasi Pembayaran'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
