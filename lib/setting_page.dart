import 'package:flutter/material.dart';
import 'package:smart_home/common/app-font.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Setting page',
        style: primaryTextStyle.copyWith(
          fontSize: size14,
          fontWeight: bold700,
        ),
      ),
    );
  }
}