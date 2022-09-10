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
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text("Money daily",
                  style: Theme.of(context).textTheme.headline1),
            ),
            SizedBox.expand(
              child: BlocBuilder<BottomnavCubit, BottomnavState>(
                builder: ((context, state) {
                  return PageView(
                    physics: const BouncingScrollPhysics(),
                    controller: state.pageController,
                    children: _widgetOptions
                        .map((e) => Center(
                              child: e,
                            ))
                        .toList(),
                    onPageChanged: (index) {
                      context.read<BottomnavCubit>().goTo(index);
                    },
                  );
                }
                    // Center(child: _widgetOptions.elementAt(state.index))
                    ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
