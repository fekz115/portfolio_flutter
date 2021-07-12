import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          LinearProgressIndicator(value: value),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Text(name),
                const Spacer(),
                Text('${(value * 100).toInt()}%'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}