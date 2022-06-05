import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../navigationBloc/navbloc_bloc.dart';

class HomePage extends StatelessWidget {
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
        body: Center(
          child: ElevatedButton(
            child: Text('Go to PageB'),
            onPressed: () {
              context.read<NavBloc>().add(EventAddCategory());
            },
          ),
        ),
      ),
    );
  }
}
