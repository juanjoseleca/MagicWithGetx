import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:MagicWithGetx/interfaces/slides/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(
        title: "¿Qué es Getx?",
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "- GetX es un framework ligero y poderoso. Combina un mane"
              "jador de estado de buen rendimiento, inyeccion inteligente de de"
              "pendencias, y manejo de rutas de una forma practica y rápida.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- GetX es el octavo paquete con mas likes de pub.dev, con menos"
              " de un año de lanzamiento.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "- GetX tiene 3 principios, que son prioridad en la libreria: ",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "RENDIMIENTO",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Get.defaultDialog(title: "Get.dialog()");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "PRODUCTIVIDAD",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "ORGANIZACIÓN",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(SecondSlide());
        },
        label: Text("Siguiente"),
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
