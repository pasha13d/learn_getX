import 'package:get/get.dart';
import 'package:learn_getx/models/product_model.dart';
import 'package:learn_getx/services/api_service.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await AppService.fetchProducts();
      if(products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}