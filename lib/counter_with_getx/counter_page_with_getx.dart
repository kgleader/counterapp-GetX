import 'package:counterapp/counter_with_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter+page2.dart';

class CounterWithGetxPage extends StatelessWidget {
  CounterWithGetxPage({super.key});

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(
            '${controller.count}',
            style: Theme.of(context).textTheme.headline4,
          );
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterGetxPage2(),
                  ),
                );
              },
              child: const Text('Counter Page 2 Getx'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
