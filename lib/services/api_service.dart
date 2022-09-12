import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:learn_getx/models/product_model.dart';

class AppService {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var uri = 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie';
    var res = await client.get(Uri.parse(uri));
    var jsonString;
    if(res.statusCode == 200) {
      jsonString = res.body;
    }
    return productFromJson(jsonString);
  }
}