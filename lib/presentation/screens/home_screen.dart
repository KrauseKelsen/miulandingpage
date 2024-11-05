import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text("its not just a Coffee", style: GoogleFonts.rubik(fontSize: 60.0, fontWeight: FontWeight.w100, color: Colors.black),),
          )
        ],
      ),
    );
  }
}
