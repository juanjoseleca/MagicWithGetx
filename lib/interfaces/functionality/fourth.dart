import 'package:MagicWithGetx/interfaces/generalWidgets/birdImage.dart';
import 'package:MagicWithGetx/routes/routingConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  int valor = 0;
  @override
  Widget build(BuildContext context) {
    print("Estoy dibujando sin magia");

    return Scaffold(
      appBar: AppBar(
        title: Text("Hechizo no tan magico"),
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
                    setState(() {
                      valor--;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  valor.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    size: 40,
                  ),
                  onPressed: () {
                    print("add");
                    setState(() {
                      valor++;
                    });
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
          Get.toNamed(RouteNames.FifthRoute);
        },
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}
