import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Dialog"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (() {
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: TextStyle(fontSize: 25),
                    middleText: "This is middle text",
                    radius: 5,
                    textCancel: "Cancel",
                    textConfirm: "Ok",
                    /// it won't close the dialog while clicking on outside
                    /// of the dialog. Defualt value is TRUE
                    barrierDismissible: false,
                  );
                }),
                child: const Text("Dialog")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
