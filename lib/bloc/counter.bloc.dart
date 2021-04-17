import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


enum CounterEvent{ INCREMENTER,DECREMENTER }
class CounterBloc extends Bloc<CounterEvent,int>{

  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch(event){
      case CounterEvent.INCREMENTER:
        yield state+1;
        break;
      case CounterEvent.DECREMENTER:
        yield state-1;
        break;
    }

  }


}