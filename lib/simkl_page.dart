import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimklPage extends StatelessWidget {
  const SimklPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Simkl Page",
          style: GoogleFonts.exo2(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
