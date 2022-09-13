import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/common_modules/app_colors.dart';
import 'package:learn_getx/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIALROUTE,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: AppColor.tealColor,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
