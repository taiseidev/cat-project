import 'package:cat_project/config/image_config.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildBackGroundImage(),
      ],
    );
  }

  Image _buildBackGroundImage() {
    return Image(
      fit: BoxFit.cover,
      height: double.infinity,
      image: AssetImage(signUpImagePath),
    );
  }
}
