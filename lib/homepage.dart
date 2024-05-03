

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task6two/resultscreen.dart';

import 'calculatorcontroller.dart';

class CalculatorScreen extends StatelessWidget {

  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
              onChanged: (value) {
                controller.firstNumber.value = int.tryParse(value) ?? 0;
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
              onChanged: (value) {
                controller.secondNumber.value = int.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.add();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));

                    // Get.to(ResultScreen());
                  },
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.subtract();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));
                  },
                  child: Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.multiply();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));
                  },
                  child: Text('Multiply'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.divide();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));
                  },
                  child: Text('Divide'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
