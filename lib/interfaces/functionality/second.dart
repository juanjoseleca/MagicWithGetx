import 'package:MagicWithGetx/interfaces/functionality/Controllers/functionalityController.dart';
import 'package:MagicWithGetx/interfaces/generalWidgets/magicTrick.dart';
import 'package:MagicWithGetx/interfaces/generalWidgets/magician.dart';
import 'package:MagicWithGetx/interfaces/generalWidgets/testScreen.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  final FunctionalityController functionalityController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trucos simples pero efectivos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Magician(),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MagicTrick(
                    title: "Snackbar sin contexto",
                    ontap: () {
                      Get.snackbar("hola", functionalityController.name);
                    }),
                MagicTrick(
                    title: "Dialog sin contexto",
                    ontap: () {
                      Get.defaultDialog(
                          title: "hola ",
                          content: Text(functionalityController.name));
                    }),
                MagicTrick(
                    title: "BottomSheets sin contexto",
                    ontap: () {
                      Get.bottomSheet(Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 200,
                          child: Center(
                            child: Text(
                              "Hola " + functionalityController.name,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          )));
                    }),
                MagicTrick(
                    title: "Navegacion sencilla",
                    ontap: () {
                      Get.to(TestScreen());
                    }),
                MagicTrick(
                    title: "Cambio de tema",
                    ontap: () {
                      print("dude");
                      Get.changeTheme(Get.isDarkMode
                          ? ThemeData.light()
                          : ThemeData.dark());
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(RouteNames.ThirdRoute);
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}
