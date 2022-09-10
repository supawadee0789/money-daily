part of 'bottomnav_cubit.dart';

class BottomnavState {
  final int index;
  PageController pageController = PageController();
  BottomnavState(this.index, {required this.pageController});
}
