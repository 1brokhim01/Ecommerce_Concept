import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part '../state/splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit(BuildContext context) : super(SplashScreenInitial()) {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => SplashScreenComplete().nextPage(context));
  }
}
