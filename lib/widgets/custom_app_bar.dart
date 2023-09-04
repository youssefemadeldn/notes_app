import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key, required this.titel, required this.icon});
  final String titel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
      child: Row(
        children: [
          Text(
            titel,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CustomIcon(icon: icon),
        ],
      ),
    );
  }
}
