import 'package:get/get.dart';
import 'package:learn_getx/models/product_model.dart';

class UserProvider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    // final res = await get("http://makeup-api.herokuapp.com/api/v1/products.json");
    final res = await get("https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop");

    if(res.status.hasError) {
      return Future.error(res.statusText!);
    } else {
      return res.body;
    }
  }
}