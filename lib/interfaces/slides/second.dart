import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:MagicWithGetx/interfaces/slides/third.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(title: "Manejo de ruta (Route management)"),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "- Navegar sin la necesidad del contexto.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "- Snackbars, dialog, bottomsheets, rutas desde nuestro controlador.",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Url dinámicos de manera sencilla",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Get.toNamed('/second/34954')",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "2. Get.parameters['user']",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- Transiciones",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(ThirdSlide());
        },
        label: Text("Siguiente"),
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
