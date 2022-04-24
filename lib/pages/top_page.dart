import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [],
    );
  }

  Widget _buildBackGroundImage() {
    return Image.asset(
      'assets/images/top_image.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
    );
  }
}
