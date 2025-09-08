import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somi/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            color: Colors.black,
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5),
                Text(
                  "Continue Reading",
                  style: GoogleFonts.exo2(color: Colors.white, fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  alignment: Alignment.topRight,
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(child: Text('Welcome to Somi App!')),
    );
  }
}
