import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('favourites'),
      ),
      body: Center(
        child: Container(
          child: Text('favourites Screen'),
        ),
      ),
    );
  }
}