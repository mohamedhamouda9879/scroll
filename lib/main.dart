
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/layout/cubit/cubit.dart';
import 'package:scroll_app/layout/scroll_layout.dart';
import 'package:scroll_app/modules/home_screen/home_screen.dart';
import 'package:scroll_app/modules/register/are_you_screen.dart';
import 'package:scroll_app/modules/register/new_user_screen/new_user_screen.dart';
import 'package:scroll_app/shared/cubit/cubit.dart';


import 'shared/bloc_observer.dart';
import 'shared/cubit/states.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>AppCubit(),),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ScrollLayout(),
          );
        },
      ),
    );
  }
}
