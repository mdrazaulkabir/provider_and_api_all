import 'package:flutter/foundation.dart';
import 'package:provider_and_api_all/api_using_provider/userUtilize1.dart';
import 'package:provider_and_api_all/api_using_provider/user_model.dart';

class UserProvider1 extends ChangeNotifier{
  late List<UserModel> _userlist=[];
  List<UserModel> get allUserlist=>_userlist;
  void fetchPost()async{
    try{
      DataUtilise dataUtilise=DataUtilise();
      _userlist=await dataUtilise.getData();
    }catch(e){
    }
    notifyListeners();
  }
}