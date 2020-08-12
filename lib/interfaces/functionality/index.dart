import 'package:MagicWithGetx/interfaces/functionality/Controllers/functionalityController.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FunctionalityIndex extends StatelessWidget {
  final FunctionalityController functionalityController =
      Get.put(FunctionalityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trucos de magia"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 800,
              height: 300,
              child: Card(
                //color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 400,
                        height: 300,
                        child: Image.network(
                          "https://www.seekpng.com/png/detail/"
                          "977-9775964_mag-magician-logo-esport.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Inserta tu nombre\npara empezar",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 200,
                                  child: TextField(
                                    controller:
                                        functionalityController.nameTEC.value,
                                    decoration:
                                        InputDecoration(hintText: "Ejem. Pepe"),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          functionalityController.setName();
          Get.toNamed(RouteNames.SecondRoute);
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}
