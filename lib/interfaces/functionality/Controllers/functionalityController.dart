import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FunctionalityController extends GetxController {
  var name = "Sin nombre";
  var nameTEC = TextEditingController().obs;
  setName() => name = nameTEC.value.text;
  var number = 0.obs;
}
