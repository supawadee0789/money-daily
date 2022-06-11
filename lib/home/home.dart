import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_daily/home/bottomNav/cubit/bottomnav_cubit.dart';

import '../navigationBloc/navbloc_bloc.dart';
import 'bottomNav/bottomNav.dart';
import 'homeContent.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    Text(
      'Index 1: summary',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomnavCubit, BottomnavState>(
        builder: ((context, state) =>
            Center(child: _widgetOptions.elementAt(state.index))),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
