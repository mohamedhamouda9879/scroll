import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:scroll_app/modules/register/new_user_screen/account_details.dart';
import 'package:scroll_app/modules/register/new_user_screen/personal_info.dart';
import 'package:scroll_app/shared/components/components.dart';

class LoginNewUserScreen extends StatelessWidget {
  const LoginNewUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          AppBarDesign(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'New Account',
                style: TextStyle(fontSize: 22.0),
              ),
              Image.asset('assets/images/sign.png')
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.white,
            width: 600,
            height: 600,
            child: ContainedTabBarView(
              tabs: [
                Text('Personal info',style: TextStyle(color: Colors.grey),),
                Text('Account Details',style: TextStyle(color: Colors.grey),),
              ],
              views: [
                PersonalInfo(),
                AccountDetails(),
              ],
              onChange: (index) => print(index),
            ),
          ),

        ],
      ),
    );
  }


}
