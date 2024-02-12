import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    super.key,
    required this.value,
  });

  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_border,
        ),
        const SizedBox(
          width: 4,
        ),
        Flexible(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
