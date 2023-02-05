import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/src/screen/home/bloc/home_event.dart';
import 'package:project_one/src/screen/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());
}
