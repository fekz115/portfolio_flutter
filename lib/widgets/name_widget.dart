import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$firstName $lastName',
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }
}