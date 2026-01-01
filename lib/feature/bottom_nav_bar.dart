import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/utils/colors.dart';
import 'package:hungry/feature/auth/presentation/pages/profile_view.dart';
import 'package:hungry/feature/cart/presentation/pages/cart_view.dart';
import 'package:hungry/feature/home/presentation/pages/home_view.dart';
import 'package:hungry/feature/orderHistory/presentation/pages/order_history.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarView> {
  late PageController controller;
  late List<Widget> screens;
  late int currentScreen = 0;

  @override
  void initState() {
    screens = [
      HomeView(),
      CartView(),
      OrderHistoryView(),
      ProfileView(),
    ];
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            onTap: (value) {
              setState(() {
                currentScreen = value;
              });
              controller.jumpToPage(currentScreen);
            },
            currentIndex: currentScreen,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu_rounded),
                  label: "OrderHistory"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
            ]),
      ),
    );
  }
}
