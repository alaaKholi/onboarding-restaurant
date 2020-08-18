import 'package:onboarding_restaurant/models/food.dart';
import 'package:onboarding_restaurant/models/restaurant.dart';

class Order {
  final String date;
  int _quantity = 1;
  final Food food;
  final Restaurant restaurant;

  Order({
    this.food,
    this.restaurant,
    this.date,
  });

  void incQuantity() {
    _quantity++;
  }

  void decQuantity() {
    _quantity--;
  }

  int getQuantity() {
    return _quantity;
  }
}
