import 'package:MagicWithGetx/interfaces/generalWidgets/circleButton.dart';
import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:MagicWithGetx/interfaces/slides/fourth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(
        title: "Inyección de dependencias (Dependency Injection)",
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          children: [
            CircleButton(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(2, (index) => CircleButton())),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) => CircleButton())),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(8, (index) => CircleButton())),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(FourthSlide());
        },
        label: Text("Siguiente"),
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
