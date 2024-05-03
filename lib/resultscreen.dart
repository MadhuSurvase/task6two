

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'calculatorcontroller.dart';

class ResultScreen extends StatelessWidget {
  final CalculatorController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Obx(() => Text(
          'Result: ${controller.result.value ?? "Undefined"}',
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}