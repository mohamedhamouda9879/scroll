import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/layout/cubit/cubit.dart';
import 'package:scroll_app/layout/cubit/states.dart';
import 'package:scroll_app/shared/cubit/cubit.dart';
import 'package:scroll_app/shared/cubit/states.dart';

class ScrollLayout extends StatelessWidget {
  const ScrollLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          // appBar: AppBar(
          //   actions: [Center(child: Text('Scroll'))],
          //   title: TextButton(
          //     child: Text('Login'),
          //     onPressed: () {},
          //   ),
          // ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            index: cubit.currentIndex,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.stars_sharp, size: 30),
              Icon(Icons.search, size: 30),
              Icon(Icons.favorite, size: 30),
              Icon(Icons.list, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
              cubit.changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
