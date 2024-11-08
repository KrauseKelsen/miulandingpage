import 'package:flutter/material.dart';

class ImageHolder extends StatefulWidget {
  final double? right;
  final String? image;
  
  const ImageHolder({this.right, this.image});

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: 140,
      right: widget.right!-100.0,
      duration: const Duration(milliseconds: 400),
      child: Container(
        height: MediaQuery.of(context).size.height *0.65,
        child: Image(image: AssetImage(widget.image!)),
      )
      );
  }
}
