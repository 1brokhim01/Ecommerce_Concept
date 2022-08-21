part of '../cubit/splash_screen_cubit.dart';

abstract class SplashScreenState {}

class SplashScreenInitial extends SplashScreenState {}

class SplashScreenLoading extends SplashScreenState {}

class SplashScreenComplete extends SplashScreenState {
  nextPage(BuildContext context) =>
      Navigator.pushReplacementNamed(context, '/cart');
}

class SplashScreenError extends SplashScreenState {}
