import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'constants/theme.dart';
import 'home/bottomNav/cubit/bottomnav_cubit.dart';
import 'home/home.dart';
import 'addCategory/add_category_view.dart';
import 'navigationBloc/navbloc_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => NavBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => BottomnavCubit(),
              child: const HomePage(),
            ),
        '/addCategory': (context) => const AddCategory(),
      },
      initialRoute: '/',
    );
  }
}
