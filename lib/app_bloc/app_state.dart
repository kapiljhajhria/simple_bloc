part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  @override
  List<Object> get props => [];
}

class StatePageA extends AppState {}

class StatePageB extends AppState {}

class StatePageC extends AppState {}
