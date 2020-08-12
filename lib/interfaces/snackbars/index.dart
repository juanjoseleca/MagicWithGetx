import 'package:flutter/material.dart';

class SnackbarsIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trucos de magia con Get"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Inserta tu nombre",
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 200, child: TextField()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward_ios),
        label: Text("Siguiente"),
      ),
    );
  }
}
