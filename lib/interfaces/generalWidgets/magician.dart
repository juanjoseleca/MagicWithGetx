import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Magician extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage("https://www.seekpng.com/png/detail/"
                  "977-9775964_mag-magician-logo-esport.png"),
              fit: BoxFit.cover)),
    );
  }
}
