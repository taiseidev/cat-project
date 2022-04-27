import 'package:cat_project/config/color_config.dart';
import 'package:cat_project/config/image_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends HookWidget {
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
        onPressed: () => context.pop(),
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
        _buildBackGroundImage(),
        _buildCover(),
        _buildAuthParts(),
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

  Opacity _buildCover() {
    return Opacity(
      opacity: 0.1,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget _buildAuthParts() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          32.0,
          0,
          32.0,
          0,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                '電話番号を入力',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: HexColor('ffffff'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildForm(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: HexColor('F5B090'),
                    onPrimary: HexColor('ffffff'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    '送信',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return SizedBox(
      height: 50,
      child: TextFormField(
        autofocus: true,
        cursorColor: HexColor('ffffff'),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: HexColor('ffffff'),
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: HexColor('ffffff'),
              width: 3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: HexColor('ffffff'),
              width: 2,
            ),
          ),
          labelStyle: TextStyle(
            fontSize: 12,
            color: HexColor('ffffff'),
          ),
          labelText: '例)09022222222',
        ),
      ),
    );
  }
}
