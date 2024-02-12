import 'package:flutter/material.dart';

class SpecialityPointWidget extends StatelessWidget {
  const SpecialityPointWidget({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          SelectableText(
            '$name:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          SelectableText(
            value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
