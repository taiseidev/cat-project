// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NormalImage extends StatelessWidget {
  NormalImage({Key? key, required this.imagePath}) : super(key: key);
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      height: double.infinity,
      image: AssetImage(imagePath),
    );
  }
}
