import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Soumi-Cuteii",
                    style: GoogleFonts.exo2(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "General",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Player",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Providers",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Layout",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Update and Backup",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Accounts and Security",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Extensions",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "General",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
