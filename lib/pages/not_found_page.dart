import 'package:flutter/material.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unknown Route'),),
      body: Container(
        child: Center(
          child: Text("Page doesn't exist", style: TextStyle(color: Colors.red, fontSize: 15),),
        ),
      ),
    );
  }
}
