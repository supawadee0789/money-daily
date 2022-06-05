part of 'navbloc_bloc.dart';

@immutable
abstract class NavblocEvent {}

class EventHome extends NavblocEvent {}

class EventAddCategory extends NavblocEvent {}
