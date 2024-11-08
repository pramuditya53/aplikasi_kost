// feature/bookingscreen/BookingController.dart

import 'package:flutter/material.dart';

class BookingController extends ChangeNotifier {
  String? selectedPaymentMethod;

  void selectPaymentMethod(String method) {
    selectedPaymentMethod = method;
    notifyListeners();
  }

  void confirmBooking() {
    if (selectedPaymentMethod != null) {
      // Proses konfirmasi pemesanan di sini
      print(
          'Booking dikonfirmasi dengan metode pembayaran: $selectedPaymentMethod');
    } else {
      print('Pilih metode pembayaran terlebih dahulu.');
    }
  }
}
