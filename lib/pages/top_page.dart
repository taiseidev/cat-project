import 'package:cat_project/config/color_config.dart';
import 'package:cat_project/config/image_config.dart';
import 'package:cat_project/config/text_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildBackGroundImage(),
        _buildCover(),
        _buildTopParts(context),
      ],
    );
  }

  Image _buildBackGroundImage() {
    return Image(
      fit: BoxFit.cover,
      height: double.infinity,
      image: AssetImage(topImagePath),
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

  Widget _buildTopParts(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        80,
        0,
        80,
        0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 350,
          ),
          _buildAppTitle(),
          const SizedBox(
            height: 200,
          ),
          _buildRuleText(context),
          const SizedBox(
            height: 20,
          ),
          _buildAuthButtons(),
        ],
      ),
    );
  }

  Row _buildAppTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          appTitleImagePath,
          width: 42,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          appName,
          style: TextStyle(
            color: HexColor('ffffff'),
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  RichText _buildRuleText(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: HexColor('ffffff'),
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: ruleText[0],
          ),
          TextSpan(
            text: ruleText[1],
            style: TextStyle(
              color: HexColor('569DDE'),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => buildNormalModal(context),
          ),
          TextSpan(
            text: ruleText[2],
          ),
          TextSpan(
            text: ruleText[3],
            style: TextStyle(
              color: HexColor('569DDE'),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => buildNormalModal(context),
          ),
          TextSpan(
            text: ruleText[4],
          ),
        ],
      ),
    );
  }

  Widget _buildAuthButtons() {
    return Column(
      children: [
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
              '新規会員登録',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'ログイン',
            style: TextStyle(
              color: HexColor('ffffff'),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> buildNormalModal(BuildContext context) async {
    await showModalBottomSheet<Widget>(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.only(top: 64),
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const Text(''),
        );
      },
    );
  }
}
