import 'package:MagicWithGetx/interfaces/generalWidgets/slideAppbar.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SlideAppBar(
        title: "¿Qúe es Getx?",
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
