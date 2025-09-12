import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnilistPage extends StatelessWidget {
  const AnilistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Anilist Page",
          style: GoogleFonts.exo2(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
