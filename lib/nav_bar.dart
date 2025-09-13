import 'package:flutter/material.dart';
import 'package:soumi/home_page.dart';
import 'package:soumi/profile_page.dart';
import 'package:soumi/search_page.dart';
import 'package:soumi/anilist_page.dart';
import 'package:soumi/simkl_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 2;

  List<Widget> screens = [
    AnilistPage(),
    SimklPage(),
    HomePage(),
    SearchPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/anilist_logo.png') ), label: "Anilist"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/simkl_logo.png') ), label: "Simkl"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage('assets/profile.png'), radius: 15,), label: "Profile"),
        ],
      ),

      body: screens[selectedIndex],

    );
  }
}
