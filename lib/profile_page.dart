import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soumi/settings/about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18.0)),
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
                SizedBox(height: 40),
                settingsMenuButton("General", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("Player", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("Provider", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("Layout", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("Update and Backup", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("Extensions", Icon(Icons.arrow_right, color: Colors.white), context),
                settingsMenuButton("About", Icon(Icons.arrow_right, color: Colors.white), context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget settingsMenuButton(String title, Icon icon, BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      minimumSize: Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
    },
    child: Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
        Text(
          title,
          style: GoogleFonts.exo2(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),
        ),
        Spacer(),
        icon,
      ],
    ),
  );

}

// Widget testButton(BuildContext context) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.black,
//       minimumSize: Size(double.infinity, 50),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(50)),
//       ),
//     ),
//     onPressed: () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
//     },
//     child: Row(
//       children: [
//         Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
//         Text(
//           "test",
//           style: GoogleFonts.exo2(
//             color: Colors.white,
//             fontSize: 15,
//             fontWeight: FontWeight.normal
//           ),
//         ),
//         Spacer(),
//         Icon(Icons.arrow_right, color: Colors.white),
//       ],
//     ),
//   );

// }