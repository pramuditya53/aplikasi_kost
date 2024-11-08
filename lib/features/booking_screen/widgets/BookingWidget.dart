// feature/bookingscreen/BookingWidget.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/BookingController.dart';

class BookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookingController = Provider.of<BookingController>(context);

    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('Kartu Kredit'),
          onTap: () {
            bookingController.selectPaymentMethod('Kartu Kredit');
          },
          selected: bookingController.selectedPaymentMethod == 'Kartu Kredit',
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text('E-Wallet'),
          onTap: () {
            bookingController.selectPaymentMethod('E-Wallet');
          },
          selected: bookingController.selectedPaymentMethod == 'E-Wallet',
        ),
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text('Transfer Bank'),
          onTap: () {
            bookingController.selectPaymentMethod('Transfer Bank');
          },
          selected: bookingController.selectedPaymentMethod == 'Transfer Bank',
        ),
      ],
    );
  }
}
