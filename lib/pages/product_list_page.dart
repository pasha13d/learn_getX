import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/common_modules/app_colors.dart';
import 'package:learn_getx/common_modules/app_string.dart';
import 'package:learn_getx/controllers/product_controller.dart';

class ProductListViewPage extends StatelessWidget {
  ProductListViewPage({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx(() {
        if(productController.isLoading.value) {
          return Center(child: CircularProgressIndicator(),);
        } else {
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              productController.productList[index].imageLink!,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productController.productList[index].name!,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                productController.productList[index].brand!,
                                style: TextStyle(fontSize: 14, color: AppColor.greyColor),
                              ),
                              Text(
                                productController.productList[index].category!,
                                style: TextStyle(fontSize: 14, color: AppColor.greyColor),
                              ),
                            ],
                          )
                        )
                      ],
                    ),
                    Container(
                      color: AppColor.grey200Color,
                      height: 2,
                    ),
                  ],
                );
              }
          );
        }
      }),
    );
  }
}
