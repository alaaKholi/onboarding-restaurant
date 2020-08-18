import 'package:onboarding_restaurant/models/food.dart';

class Restaurant {
  final List<Food> menu;
  final String address;
  final String name;
  final String imagePath;
  final int rating;

  Restaurant({this.name, this.imagePath, this.address, this.menu, this.rating});
}
