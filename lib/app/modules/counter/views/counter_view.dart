import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
   CounterView({Key? key}) : super(key: key);
//me
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Obx(
        () => Text("Count: ${controller.count}",
        style: TextStyle(
          fontSize: controller.count.toDouble(),
        ),
      ),

        
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.decrement();
            },
            child: Icon(Icons.remove),
            heroTag: null, 
          ),
          SizedBox(width: 10), 
          FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: Icon(Icons.add),
            heroTag: null, 
          ),
        ],
      ),
    );
  }
}