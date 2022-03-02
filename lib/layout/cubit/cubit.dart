import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/layout/cubit/states.dart';
import 'package:scroll_app/modules/favourites/favorites_screen.dart';
import 'package:scroll_app/modules/home_screen/home_screen.dart';
import 'package:scroll_app/modules/search_screen/search_screen.dart';
import 'package:scroll_app/modules/settings_screen/settings_screen.dart';
import 'package:scroll_app/modules/special_ads_screen/special_ads_screen.dart';

class ScrollCubit extends Cubit<ScrollStates>{
  ScrollCubit(): super(ScrollInitialState());

  static ScrollCubit get(context)=>BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreen = [
    HomeScreen(),
    SpecialAdsScreen(),
    FavouritesScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  void ChangeBottom(int index) {
    currentIndex = index;
    emit(ScrollChangeBottomNavState());
  }
}