import 'package:flutter_bloc/flutter_bloc.dart';
part '../state/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  
}
