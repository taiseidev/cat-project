import 'package:cat_project/config/color_config.dart';
import 'package:cat_project/config/image_config.dart';
import 'package:cat_project/config/text_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopPage extends HookWidget {
  const TopPage({Key? key}) : super(key: key);

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
        _buildCover(),
        _buildTopParts(),
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

  Widget _buildTopParts() {
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
          _buildRuleText(),
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

  RichText _buildRuleText() {
    final context = useContext();
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
              ..onTap = () => buildNormalModal(context, 'プライバシーポリシー'),
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
              ..onTap = () => buildNormalModal(context, '利用規約'),
          ),
          TextSpan(
            text: ruleText[4],
          ),
        ],
      ),
    );
  }

  Widget _buildAuthButtons() {
    final context = useContext();
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () => context.go('/signUp'),
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

  Future<void> buildNormalModal(BuildContext context, String title) async {
    await showBarModalBottomSheet<Widget>(
      context: context,
      builder: (context) => Container(
        margin: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: HexColor('F5B090'),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    '閉じる',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColor('000000'),
                    ),
                  ),
                )
              ],
            ),
            const Text('後で追加'),
          ],
        ),
      ),
    );
  }
}
