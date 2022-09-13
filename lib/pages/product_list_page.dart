import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/common_modules/app_string.dart';
import 'package:learn_getx/controllers/product_controller.dart';

class ProductListViewPage extends GetView<ProductController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: controller.obx((data) =>
        ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(data[index]["name"] + " " + data[index]["brand"]),
                      subtitle: Text(data[index]["description"]),
                      trailing: Text("Price: " + data[index]["price"]),
                    ),
                  ],
                ),
              );
            }
      ),
        onError: (error) => Center(
          child: Text(
            error!,
            style: TextStyle(color: Colors.red),
          ),
        )
      ),
    );
  }
}
