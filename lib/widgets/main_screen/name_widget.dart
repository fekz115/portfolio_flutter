import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) => Text(
        '$firstName $lastName',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      );
}
