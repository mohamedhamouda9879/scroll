import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:scroll_app/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarDesign(),
          Container(
            width: 300,
            height: 500,
            child: Card(
              child: Column(children: [
                Card(
                  child: Column(children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        'https://pbs.twimg.com/profile_images/504602305426378752/XesqYLeJ_400x400.jpeg',
                      ),
                    ),
                    Row(
                      children: [
                        Text('طيبة لتجارة الذهب والمجوهرات'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(Icons.check_circle_outline),
                      ],
                    ),
                    Container(
                      child: RatingBar(
                        initialRating: 3,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: Image.asset('assets/images/full_heart.png'),
                          half: Image.asset('assets/images/half_heart.png'),
                          empty: Image.asset('assets/images/heart.png'),
                        ),
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Center(
                      child: Text('Egypt,cairo'),
                    ),
                  ]),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image(String asset) {
    return Image.asset(
      asset,
      height: 30.0,
      width: 30.0,
      color: Colors.amber,
    );
  }
}