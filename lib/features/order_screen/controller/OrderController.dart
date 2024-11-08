import '../../../data/order/model/OrderModel.dart';
import '../../../data/order/dummy/DummyOrder.dart';

class OrderController {
  List<OrderModel> getOrders() {
    return DummyOrderData.orderList;
  }
}
