import 'package:MagicWithGetx/interfaces/generalWidgets/birdImage.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  final MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magia de otro nivel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: List.generate(20, (index) => BirdImage()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.remove_circle,
                    size: 40,
                  ),
                  onPressed: () {
                    print("rest");
                    myController.rest();
                  }),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    myController.number.value.toString(),
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    size: 40,
                  ),
                  onPressed: () {
                    print("add");
                    myController.add();
                  })
            ],
          ),
          Row(
            children: [],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(RouteNames.FourthRoute);
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}

class DuplicateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Text("Duplicar"),
    );
  }
}

class MyController extends GetxController {
  var number = 0.obs;
  add() => number.value++;
  rest() => number.value--;
}
