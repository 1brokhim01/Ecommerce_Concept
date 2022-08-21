import 'package:flutter_bloc/flutter_bloc.dart';
part '../state/my_cart_state.dart';

class MyCartCubit extends Cubit<MyCartState> {
  MyCartCubit() : super(MyCartInitial());
}
