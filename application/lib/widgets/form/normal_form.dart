// ignore_for_file: use_key_in_widget_constructors

import 'package:cat_project/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NormalForm extends StatelessWidget {
  const NormalForm() : super();
  @override
  Widget build(BuildContext context) {
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
