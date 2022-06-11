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
