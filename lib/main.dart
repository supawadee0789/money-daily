import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'home/bottomNav/cubit/bottomnav_cubit.dart';
import 'home/home.dart';
import 'addCategory/add_category_view.dart';
import 'navigationBloc/navbloc_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => NavBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // UI
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light().copyWith(
            primary: const Color(0xff5A5146),
            secondary: const Color(0xFFFAEBDA),
            outline: const Color(0xff5A5146)),
        // font
        fontFamily: 'Mansalva',
        //text style
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 52.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff5A5146)),
          headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              color: Color(0xff5A5146)),
          bodyText1: TextStyle(fontSize: 14.0, color: Color(0xff5A5146)),
          caption: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
        ),
      ),
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => BottomnavCubit(),
              child: const HomePage(),
            ),
        '/addCategory': (context) => AddCategory(),
      },
      initialRoute: '/',
    );
  }
}
