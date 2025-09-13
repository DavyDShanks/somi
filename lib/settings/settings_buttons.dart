import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsButtons {
  Widget settingsMenuButton(String title, Icon icon, BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        // Define button action here
      },
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.exo2(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          icon,
        ],
      ),
    );
  }
}