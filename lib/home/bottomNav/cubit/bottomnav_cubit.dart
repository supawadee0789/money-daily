import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottomnav_state.dart';

class BottomnavCubit extends Cubit<BottomnavState> {
  BottomnavCubit()
      : super(
            BottomnavState(0, pageController: PageController(initialPage: 0)));
  void goTo(int id) {
    state.pageController.animateToPage(id,
        curve: Curves.easeInOut, duration: const Duration(milliseconds: 300));
    emit(BottomnavState(id, pageController: state.pageController));
  }
}
