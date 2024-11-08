import 'package:flutter/material.dart';
import '../../../data/order/model/OrderModel.dart';

class OrderWidget extends StatelessWidget {
  final OrderModel order;

  const OrderWidget({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(order.description),
            const SizedBox(height: 8),
            Text(
              'Rp${order.price}',
              style: const TextStyle(
                color: Colors.teal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
