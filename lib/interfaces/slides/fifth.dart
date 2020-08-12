import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FifthSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(
        title: "Manejo de estados (State Management)",
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  // width: 600,
                  child: Image.asset("assets/stateManagement2.png")),
              SizedBox(
                height: 40,
              ),
              Text(
                "La regla general es: haz lo que sea menos incómodo.",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(RouteNames.FunctionalityRoute);
        },
        label: Text("Siguiente"),
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
