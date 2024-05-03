import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = 0.obs;
  var secondNumber = 0.obs;
  var result = 0.obs;

  void add() {
    result.value = firstNumber.value + secondNumber.value;
  }

  void subtract() {
    result.value = firstNumber.value - secondNumber.value;
  }

  void multiply() {
    result.value = firstNumber.value * secondNumber.value;
  }

  void divide() {
    if (secondNumber.value != 0) {
      result.value = firstNumber.value ~/ secondNumber.value;
    } else {
      result.value = 0;
    }
  }
}