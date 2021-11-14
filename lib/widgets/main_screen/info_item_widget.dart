import 'package:flutter/material.dart';

class InfoItemWidget extends StatelessWidget {
  const InfoItemWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$name:',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(value),
      ],
    );
  }
}
