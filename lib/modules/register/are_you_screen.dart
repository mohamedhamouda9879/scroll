import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scroll_app/modules/register/company_screen/company_screen.dart';
import 'package:scroll_app/modules/register/marketer_screen/markter_screen.dart';
import 'package:scroll_app/modules/register/new_user_screen/new_user_screen.dart';
import 'package:scroll_app/shared/components/components.dart';

class AreYou extends StatelessWidget {
  const AreYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/b/app_logo.png'),
                  SizedBox(height: 25.0,),
                  Text(
                    'Are You?',
                    style: TextStyle(color: Colors.white,fontSize: 14.0,),
                  ),
                  SizedBox(height: 30,),
                  textButton(
                    50.0,
                    () {
                      NavigateTo(context, LoginNewUserScreen());
                    },
                    'New User',
                    'assets/images/group.png',
                    TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 30,),
                  textButton(
                    50.0,
                        () {
                          NavigateTo(context, LoginMarketerScreen());
                        },
                    'Marketer',
                    'assets/images/market.png',
                    TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 30,),
                  textButton(
                    50.0,
                        () {
                          NavigateTo(context, LoginCompanyScreen());
                        },
                    'A Company',
                    'assets/images/shop.png',
                    TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
