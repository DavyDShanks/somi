import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('This is the About Page', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}