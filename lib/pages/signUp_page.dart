// ignore_for_file: file_names

import 'package:cat_project/config/color_config.dart';
import 'package:cat_project/config/image_config.dart';
import 'package:cat_project/config/size_config.dart';
import 'package:cat_project/widgets/button/normal_button.dart';
import 'package:cat_project/widgets/form/normal_form.dart';
import 'package:cat_project/widgets/image/normal_image.dart';
import 'package:cat_project/widgets/other/cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    final context = useContext();
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: context.pop,
        icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: HexColor('ffffff'),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        NormalImage(
          imagePath: signUpImagePath,
        ),
        const Cover(),
        _buildAuthParts(),
      ],
    );
  }

  Widget _buildAuthParts() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          32,
          0,
          32,
          0,
        ),
        child: Center(
          child: Column(
            children: [
              SizeConfig.height64,
              Text(
                '電話番号を入力',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: HexColor('ffffff'),
                ),
              ),
              SizeConfig.height32,
              const NormalForm(),
              SizeConfig.height32,
              const NormalButton(),
            ],
          ),
        ),
      ),
    );
  }
}
