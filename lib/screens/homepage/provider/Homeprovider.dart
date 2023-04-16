import 'package:flutter/material.dart';
import 'package:product_api/screens/homepage/modal/homemodal.dart';
import 'package:product_api/utils/api_helper.dart';

class homrprovider extends ChangeNotifier {

  Future<List<HomeModel>?> callapi() async {
    apihelper Apihelper =apihelper();
    List<HomeModel>? product = (await Apihelper.getapi());
    return product;
  }

  Future<void> postapicall(p_name,p_rate,p_price)
  async {
    apihelper a1 = apihelper();
    bool data=await a1.PostApiCall(p_name,p_rate,p_price);
    notifyListeners();
    if(data==true)
    {
      print("success");
    }
    else
    {
      print("fail");
    }
  }
}
