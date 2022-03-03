
import 'package:flutter/material.dart';

class BGLinearGradient extends StatelessWidget {
  const BGLinearGradient({required Key key, required this.color1, required this.color2}) : super(key: key);
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: const Alignment(0.4, 0.4),
          colors: <Color>[
            color2 ,
            color1 ,
          ], // red to yellow
        ),
      ),
    );
  }
}
