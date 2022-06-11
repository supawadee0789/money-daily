import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_daily/home/bottomNav/cubit/bottomnav_cubit.dart';

import '../navigationBloc/navbloc_bloc.dart';
import 'bottomNav/bottomNav.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavBloc, NavblocState>(
      listener: (context, state) {
        if (state is StateAddCategory) {
          Navigator.of(context).pushNamed('/addCategory');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page A'),
        ),
        body: BlocBuilder<BottomnavCubit, BottomnavState>(
          builder: ((context, state) =>
              Center(child: _widgetOptions.elementAt(state.index))),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
