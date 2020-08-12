import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FifthScreen extends StatelessWidget {
  final MagicController magicController = Get.put(MagicController());

  @override
  Widget build(BuildContext context) {
    print("Redibujando pantalla===============");
    return Scaffold(
      appBar: AppBar(
        title: Text("Magia oscura"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DuplicateButton(),
            SizedBox(
              width: 50,
            ),
            DuplicatedValue()
          ],
        ),
      ),
    );
  }
}

class DuplicateButton extends StatelessWidget {
  final MagicController magicController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("Se dibujo el boton de duplicar");
    return RaisedButton(
      onPressed: () => magicController.duplicate(),
      child: Text("Duplicar"),
    );
  }
}

class DuplicatedValue extends StatelessWidget {
  final MagicController magicController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("Se dibujo el valor duplicado");
    return Obx(() {
      return Text(
        magicController.number.value.toString(),
        style: TextStyle(fontSize: 35),
      );
    });
  }
}

class MagicController extends GetxController {
  var number = 1.obs;
  duplicate() => number.value = number.value * 2;
}
