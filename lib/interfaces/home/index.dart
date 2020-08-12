import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeIndex extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("title".tr),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterLogo(
              size: 150,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Añade Magia a tus proyectos\ncon GetX",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rendimiento-Productividad-Organización",
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: SizedBox()),
            Text(
              "Juan Jose Leon Camilo",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Paulonia's co-founder",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(RouteNames.FirstSlideRoute);
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}
