import 'package:flutter/material.dart';
import 'package:smart_home/common/app-font.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Activity page',
        style: primaryTextStyle.copyWith(
          fontSize: size14,
          fontWeight: bold700,
        ),
      ),
    );
  }
}