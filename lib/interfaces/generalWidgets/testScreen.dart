import 'package:MagicWithGetx/interfaces/functionality/Controllers/functionalityController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  final FunctionalityController functionalityController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pruebas y mas pruebas"),
      ),
      body: Center(
        child: Text(
          "Dejame adivinar tu nombre, ¿" + functionalityController.name + "?",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
