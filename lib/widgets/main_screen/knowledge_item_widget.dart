import 'package:flutter/material.dart';

class KnowledgeItemWidget extends StatelessWidget {
  const KnowledgeItemWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check),
        const SizedBox(width: 4),
        Text(name),
      ],
    );
  }
}
