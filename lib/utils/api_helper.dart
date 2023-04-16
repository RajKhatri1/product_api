import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:product_api/screens/homepage/modal/homemodal.dart';

class apihelper {
  Future<List<HomeModel>> getapi() async {
    String link = "https://apidatahub.000webhostapp.com/MyShop/API/products.php";
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    print(json);
    List<HomeModel> j1 = json.map((e) => HomeModel.fromJson(e)).toList();
    return j1;
  }

  Future<bool> PostApiCall(p_name, p_rate, p_price) async {
    String Link = "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(Link);

    var response =
        await http.post(uri, body: {
      "p_name": "Lenovo",
      "p_rate": "5",
      "p_price": "10000",
      "p_offer": "0",
      "p_desc": "Leptop",
      "p_category": "Leptop",
    });

    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}