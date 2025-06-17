import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{
  var _count=0;
  int get count=>_count;
  void increment(){
    _count =_count+1;
    notifyListeners();
  }
  void decrement(){
    _count =_count-1;
    notifyListeners();
  }
}