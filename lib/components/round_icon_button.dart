import 'package:flutter/material.dart';

class roundIconButton extends StatelessWidget {
  const roundIconButton(
      {required this.icon, required this.onPressed, super.key});
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xFF4C4551),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(icon),
    );
  }
}
