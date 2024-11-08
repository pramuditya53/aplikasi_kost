import '../model/OrderModel.dart';

class DummyOrderData {
  static List<OrderModel> orderList = [
    OrderModel(
      title: "Order Kost Bulanan",
      description: "Pembayaran bulan Mei 2024",
      price: 700000,
    ),
    // Tambahkan data dummy lainnya jika diperlukan
  ];
}
