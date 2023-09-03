import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      //color: Colors.blueAccent,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.11),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        size: 27,
      ),
    );
  }
}
