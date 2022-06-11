import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_daily/home/bottomNav/cubit/bottomnav_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomnavCubit, BottomnavState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Summary',
            ),
          ],
          currentIndex: state.index,
          // selectedItemColor: Colors.amber[800],
          onTap: (id) => BlocProvider.of<BottomnavCubit>(context).goTo(id),
        );
      },
    );
  }
}
