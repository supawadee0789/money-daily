import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottomnav_state.dart';

class BottomnavCubit extends Cubit<BottomnavState> {
  BottomnavCubit() : super(BottomnavState(0));
  void goTo(int id) => emit(BottomnavState(id));
}
