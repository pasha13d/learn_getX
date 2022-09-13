import 'package:get/get.dart';
import 'package:learn_getx/bindings/product_bindings.dart';
import 'package:learn_getx/pages/product_list_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIALROUTE = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => ProductListViewPage(),
        binding: ProductBinding(),
    ),
  ];
}