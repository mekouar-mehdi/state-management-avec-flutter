import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterCubit extends Cubit<int>{
  CounterCubit(int state) : super(state);

  void incrementer(){
    emit(state+1);
  }

  void decrementer(){
    emit(state-1);

  }
}