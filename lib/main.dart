import 'package:flutter/material.dart';
import 'package:somi/nav_bar.dart';
import 'home_page.dart';


void main() {
  runApp(const Somi());
}

class Somi extends StatelessWidget {
  const Somi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NavBar());
  }
}
