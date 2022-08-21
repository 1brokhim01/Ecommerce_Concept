part of '../cubit/my_cart_cubit.dart';

abstract class MyCartState {}

class MyCartInitial extends MyCartState {}

class MyCartLoading extends MyCartState {}

class MyCartComplete extends MyCartState {
  MyCartComplete();
}

class MyCartError extends MyCartState {}
