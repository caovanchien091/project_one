import 'package:common/common.dart';
import 'package:project_one/src/screen/auth/bloc/auth_event.dart';
import 'package:project_one/src/screen/auth/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState());
}
