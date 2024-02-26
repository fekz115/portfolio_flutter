import 'package:flutter/material.dart';

class KnowledgeItemWidget extends StatelessWidget {
  const KnowledgeItemWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check),
          const SizedBox(width: 4),
          Expanded(child: Text(name)),
        ],
      );
}
