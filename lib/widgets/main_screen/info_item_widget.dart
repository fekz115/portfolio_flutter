import 'package:flutter/material.dart';

class InfoItemWidget extends StatelessWidget {
  const InfoItemWidget({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) => Row(
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
