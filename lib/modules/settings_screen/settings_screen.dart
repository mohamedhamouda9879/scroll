import 'package:flutter/material.dart';
import 'package:scroll_app/shared/components/components.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarDesign(),
          Card(
            child: Row(
              children: [
              ],
            ),
          )
        ],
      ),
    );
  }
}
