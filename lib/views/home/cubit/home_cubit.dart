import 'package:flutter_bloc/flutter_bloc.dart';
part '../state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
