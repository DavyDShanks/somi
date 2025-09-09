import 'package:flutter/material.dart';
import 'package:soumi/nav_bar.dart';

void main() {
  runApp(const Soumi());
}

class Soumi extends StatelessWidget {
  const Soumi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NavBar());
  }
}
