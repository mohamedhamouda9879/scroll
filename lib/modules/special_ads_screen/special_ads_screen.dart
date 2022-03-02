import 'package:flutter/material.dart';

class SpecialAdsScreen extends StatelessWidget {
  const SpecialAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Special Ads'),
      ),
      body: Center(
        child: Container(
          child: Text('Special Ads Screen'),
        ),
      ),
    );  }
}
