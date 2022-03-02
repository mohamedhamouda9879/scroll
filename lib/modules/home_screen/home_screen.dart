import 'package:flutter/material.dart';
import 'package:scroll_app/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarDesign(),
          Center(
            child: Container(
              child: Text('Home Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
