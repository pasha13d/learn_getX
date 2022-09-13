import 'package:get/get.dart';
import 'package:learn_getx/models/product_model.dart';
import 'package:learn_getx/providers/user_provider.dart';
import 'package:learn_getx/services/api_service.dart';


class ProductController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();
    UserProvider().getUser().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(
        null,
        status: RxStatus.error(err.toString())
      );
    });
  }

  // void fetchProduct() async {
  //   try {
  //     isLoading(true);
  //     var products = await AppService.fetchProducts();
  //     if(products != null) {
  //       productList.assignAll(products);
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}