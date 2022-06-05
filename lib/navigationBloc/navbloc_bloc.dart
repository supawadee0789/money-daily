import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navbloc_event.dart';
part 'navbloc_state.dart';

class NavBloc extends Bloc<NavblocEvent, NavblocState> {
  NavBloc() : super(StateHome()) {
    on<EventHome>((event, emit) => emit(StateHome()));
    on<EventAddCategory>((event, emit) => emit(StateAddCategory()));
  }
}
