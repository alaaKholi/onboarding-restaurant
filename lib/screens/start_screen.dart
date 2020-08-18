import 'package:flutter/material.dart';
import 'package:onboarding_restaurant/blocks/onboarding.dart';
import 'package:onboarding_restaurant/cons.dart';
import 'package:onboarding_restaurant/screens/bottom_sheet_options.dart';

class StartPage extends StatefulWidget {
  static String id = 'start_page';
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<OnboardingPage> _pages = [
    OnboardingPage(
        title: "Order Online ",
        subtitle: "Search and order your food from the amazing resturant",
        image: "images/undraw_shopping_app_flsj.svg"),
    OnboardingPage(
        title: "Healthy Options ",
        subtitle: "Order healty, fresh and balanced meals",
        image: "images/undraw_healthy_options_sdo3.svg"),
    OnboardingPage(
        title: "Online Payment",
        subtitle: "Check Out with online, fast, secure, easy payment ",
        image: "images/undraw_credit_card_payment_12va.svg"),
    OnboardingPage(
        title: "Fast Delivery",
        subtitle: "Food delivered to your doorstep, hot, fresh and on time.",
        image: "images/undraw_on_the_way_ldaq.svg"),
    OnboardingPage(
        title: "Enjoy",
        subtitle: "Have fun with your order",
        image: "images/undraw_having_fun_iais.svg"),
  ];

  _changPage(int n) {
    setState(() {
      _currentPage = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: PageView.builder(
              itemBuilder: (context, index) => _pages[index],
              scrollDirection: Axis.horizontal,
              itemCount: _pages.length,
              controller: _controller,
              onPageChanged: _changPage,
            ),
          ),
          Expanded(
            flex: 1,
            child: (_currentPage != _pages.length - 1)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (int index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        //curve: Curves.bounceInOut,
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentPage)
                              ? mainColor
                              : mainColor.withOpacity(0.5),
                        ),
                      );
                    }),
                  )
                : GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => BottomSheetOptions());
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: mainColor),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height / 25),
                        ),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
