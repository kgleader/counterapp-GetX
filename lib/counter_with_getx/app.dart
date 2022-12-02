import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../counter/counter_page.dart';

class MyAppGetx extends StatelessWidget {
  const MyAppGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(),
    );
  }
}
