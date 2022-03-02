
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/modules/search_screen/search_screen.dart';
import 'package:scroll_app/shared/cubit/states.dart';

import '../../modules/favourites/favorites_screen.dart';
import '../../modules/home_screen/home_screen.dart';
import '../../modules/settings_screen/settings_screen.dart';
import '../../modules/special_ads_screen/special_ads_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;


  List<Widget> screens = [
    HomeScreen(),
    SpecialAdsScreen(),
    FavouritesScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarStates());
  }



}