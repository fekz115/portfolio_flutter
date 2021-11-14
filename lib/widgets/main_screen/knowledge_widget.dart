import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/knowledge.dart';
import 'package:portfolio_flutter/widgets/main_screen/knowledge_item_widget.dart';

class KnowledgeWidget extends StatelessWidget {
  const KnowledgeWidget({
    Key? key,
    required this.knowledge,
  }) : super(key: key);

  final List<Knowledge> knowledge;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        const Text(
          'Knowledge:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        ...knowledge
            .map(
              (e) => KnowledgeItemWidget(
                name: e.name,
              ),
            )
            .toList(),
      ],
    );
  }
}
