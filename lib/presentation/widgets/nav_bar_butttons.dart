import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarButttons extends StatefulWidget {
  final String? text;
  const NavBarButttons({this.text});

  @override
  State<NavBarButttons> createState() => _NavBarButttonsState();
}

class _NavBarButttonsState extends State<NavBarButttons> {
  Color mycolor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // Mouse Detector
      onEnter: (a) {
        mycolor = Colors.black87;
        setState(() {
          //print('pase por Enter');
        });
      },
      onExit: (a) {
        mycolor = Colors.transparent;
        setState(() {
          //print('pase por Exit');
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 375),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(right: 15.0),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(width: 1.5, color: mycolor)),
        child: Center(
          child: Text(
            widget.text!,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
