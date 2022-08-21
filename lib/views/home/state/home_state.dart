part of '../cubit/home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class CartLoading extends HomeState {}

class CartComplete extends HomeState {
  CartComplete();
}

class CartError extends HomeState {}
