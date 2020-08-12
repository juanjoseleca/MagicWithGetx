import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Theme.of(context).primaryColor),
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
