import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/common_modules/app_colors.dart';
import 'package:learn_getx/common_modules/app_string.dart';
import 'package:learn_getx/controllers/increment_controller.dart';
import 'package:learn_getx/controllers/translation_controller.dart';
import 'package:learn_getx/models/messages.dart';
import 'package:learn_getx/models/student_model.dart';
import 'package:learn_getx/pages/home_page.dart';
import 'package:learn_getx/pages/not_found_page.dart';
import 'package:learn_getx/pages/product_list_page.dart';
import 'package:learn_getx/pages/settings_page.dart';
import 'package:learn_getx/services/increment_service.dart';

import 'controllers/student_controller.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting services...');
  await Get.putAsync<IncService>(() async => await IncService());
  print('All services started...');
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // StudentController studentController = Get.put(
  //     StudentController(),
  //     permanent: true,
  // );



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => StudentController());

    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.tealColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListViewPage(),
    );
  }
}
