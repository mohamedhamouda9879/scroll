import 'package:flutter/material.dart';
import 'package:scroll_app/modules/register/are_you_screen.dart';
import 'package:scroll_app/shared/components/components.dart';

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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          width: 350,
          height: 400,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: background(),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/b/app_logo.png'),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Please Sign In.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    defaultButton(
                        function: () {
                          NavigateTo(context, AreYou());
                        },
                        text: 'Login',
                        isUpperCase: false,
                        radius: 15.0,
                        width: 100.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
