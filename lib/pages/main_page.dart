import 'package:bayitouser/pages/booking_page.dart';
import 'package:bayitouser/pages/favorite_page.dart';
import 'package:bayitouser/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/custom_color.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  dynamic _selectedPageIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;
    _pages = [
      const HomePage(),
      const BookingPage(),
      const FavoritePage(),
      const ProfilePage(),
    ];
    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      setState(() {
        _selectedIndex = 0;
        _pageController.jumpToPage(_selectedIndex);
      });
      return false;
    } else {
      bool confirmExit = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm Exit'),
          content: const Text('Are you sure you want to exit the app?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context,false);
                // Get.back(result: false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context,true);

                // Get.back(result: true);
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
      return confirmExit;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        if (!didPop) {
          bool canPop = await _onWillPop();
          if (!canPop) {
          } else {
            SystemNavigator.pop();
          }
        }
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white10,
          selectedItemColor: CustomColors.secondary,
          unselectedIconTheme: const IconThemeData(
            color: CustomColors.secondary,
          ),
          unselectedItemColor: CustomColors.secondary,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: CustomColors.secondary),
          unselectedLabelStyle: const TextStyle(
              color: CustomColors.secondary,
              fontSize: 10,
              fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Icon(Icons.home_filled,size: 30,)
                  : Icon(Icons.home_outlined,size: 30,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Icon(Icons.check_circle,size: 30,)
                  : Icon(Icons.check_circle_outline,size: 30,),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Icon(Icons.favorite,size: 30)
                  : Icon(Icons.favorite_border,size: 30),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? Icon(Icons.person,size: 30,)
                  : Icon(Icons.person_outline,size: 30),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}