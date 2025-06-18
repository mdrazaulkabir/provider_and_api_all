import 'dart:convert';

import 'package:provider_and_api_all/api_using_provider/user_model.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class DataUtilise{
  Future<List<UserModel>>getData() async {
    List<UserModel>userData=[];
    try{
      var request =http.Request('GET',Uri.parse('https://jsonplaceholder.typicode.com/users'));
      http.StreamedResponse response=await request.send();
      if(response.statusCode==200){
        var rawData= await response.stream.bytesToString();
        List<dynamic>data=jsonDecode(rawData);
        data.forEach((element) {
          UserModel userModel=UserModel.fromJson(element);
          userData.add(userModel);
        });
        return userData;
      }
      else{
        return [];
      }
    }catch(e){
     print("Error patching data$e");
     return [];
    }
  }
}