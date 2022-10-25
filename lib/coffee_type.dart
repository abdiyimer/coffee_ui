import 'package:flutter/material.dart';
import 'main.dart';

// ignore: camel_case_types, must_be_immutable
class coffeetype extends StatelessWidget {
  final String LIST;
  final bool isSelected;
  VoidCallback ON;
  coffeetype({
    super.key,
    // ignore: non_constant_identifier_names
    required this.LIST,
    required this.isSelected,
    required this.ON,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ON, //onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          LIST, //coffeeType
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
