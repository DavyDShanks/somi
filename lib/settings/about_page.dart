import 'package:flutter/material.dart';
import 'package:soumi/settings/settings_buttons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          leading: BackButton(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text('About', style: TextStyle(color: Colors.white)),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            SettingsButtons().settingsMenuButton("Github", Icon(Icons.arrow_right, color: Colors.white), context),
            SettingsButtons().settingsMenuButton("Contact Us", Icon(Icons.arrow_right, color: Colors.white), context),
            SettingsButtons().settingsMenuButton("Privacy Policy", Icon(Icons.arrow_right, color: Colors.white), context),
            SettingsButtons().settingsMenuButton("Terms of Service", Icon(Icons.arrow_right, color: Colors.white), context),
            SettingsButtons().settingsMenuButton("Licenses", Icon(Icons.arrow_right, color: Colors.white), context),
        ]
      ),
      )
    );
  }
}
