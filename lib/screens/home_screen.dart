import 'package:flutter/material.dart';
import 'package:onboarding_restaurant/blocks/rating_stars.dart';
import 'package:onboarding_restaurant/cons.dart';
import 'package:onboarding_restaurant/data.dart';
import 'package:onboarding_restaurant/screens/cart_screen.dart';
import 'package:onboarding_restaurant/screens/recent_order.dart';
import 'package:onboarding_restaurant/screens/restaurant_page.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //  double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Delivery',
          style: TextStyle(fontSize: 25),
        ),
        leading: IconButton(
            icon: Icon(Icons.account_circle), iconSize: 30, onPressed: () {}),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen())),
              child: Text(
                'Cart (${currentUser.cart.length})',
                style: TextStyle(fontSize: 25),
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                //contentPadding: EdgeInsets.symmetric(vertical: 20),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                suffixIcon:
                    IconButton(icon: Icon(Icons.close), onPressed: null),
                hintText: 'Search for Food or Restaurant',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0.8)),
              ),
            ),
          ),
          RecentOrder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestaurant()
            ],
          ),
        ],
      ),
    );
  }

  _buildRestaurant() {
    List<Widget> restaurantsList = [];
    restaurants.forEach((r) {
      restaurantsList.add(
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => RestaurantPage(restaurant: r))),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(width: 0.8, color: mainColor)),
            child: Row(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Hero(
                      tag: r.imagePath,
                      child: Image(
                        image: AssetImage(r.imagePath),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          r.name,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        RatingStars(r.rating),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          r.address,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '0.2 miles away',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    return Column(
      children: restaurantsList,
    );
  }
}
