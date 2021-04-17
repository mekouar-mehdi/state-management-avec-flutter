import 'package:flutter/material.dart';


class CounterState extends ChangeNotifier{
  int counter=0;
  void incrementer(){
    ++this.counter;
    notifyListeners();
  }

  void decrementer(){
    --this.counter;
    notifyListeners();
  }
}