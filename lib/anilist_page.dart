import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnilistPage extends StatelessWidget {
  const AnilistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/anilist_logo.png", color: Colors.white, height: 25),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
              radius: 15,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
