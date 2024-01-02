import 'package:coffee_app/pages/navbar/home.dart';
import 'package:coffee_app/pages/navbar/likes.dart';
import 'package:coffee_app/pages/navbar/profile.dart';
import 'package:coffee_app/provider/address_provider.dart';
import 'package:coffee_app/provider/cart_provider.dart';
import 'package:coffee_app/provider/favourites_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/bottom_navigation_bar.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  int currentSelected = 0;

  final _pageController = PageController(
    initialPage: 0,
  );

  List<Widget> navbarPages = [
    const Home(),
    const Likes(),
    const Profile(),
  ];

  listenUserData() {
    context.read<FavouritesProvider>().fetchAllLikes();
    context.read<AddressProvider>().fetchAllAddresses();
    context.read<CartItemProvider>().fetchAllCartItems();
  }

  @override
  void initState() {
    super.initState();
    Navigator.of(context).popUntil((route) => route.isCurrent);
    listenUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: _pageController,
        children: navbarPages,
        onPageChanged: (int value) {
          setState(() {
            currentSelected = value;
          });
        },
      ),
      bottomNavigationBar: bottomNavBar(
        currentIndex: currentSelected,
        onTap: (int value) {
          setState(() {
            currentSelected = value;
          });
          _pageController.animateToPage(value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        },
        navigationItems: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 35,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
              size: 35,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 35,
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 35,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
