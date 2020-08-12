import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:MagicWithGetx/interfaces/slides/fifth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(
        title: "Manejo de estados (State Management)",
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          children: [
            Container(
                width: 600, child: Image.asset("assets/stateManagement.png")),
            SizedBox(
              height: 40,
            ),
            Text(
              "Estado (state) es cualquier dato que necesites para reconstruir"
              " la interfaz en algun momento.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(FifthSlide());
        },
        label: Text("Siguiente"),
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
