import 'package:flutter/material.dart';

class BirdImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("he dibujado un pajaro azul");
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
        "https://preview.redd.it/ybf2fdv8m5u31.jpg?auto=webp&s=d3d1bc0c3c850bf60614fc28ee981191ecfe95ca",
      ),
    );
  }
}
