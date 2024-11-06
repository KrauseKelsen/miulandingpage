import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String? image;
  final Function? hover;
  const HoverButton({this.hover, this.image});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        widget.hover!();
      },
      child: Container(
        height: 80.0,
        width: 100,
        child: const Image(image: AssetImage('')),
      ),
    );
  }
}
