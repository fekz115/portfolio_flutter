import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 5),
        child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutQuint,
          tween: Tween(begin: 0, end: value),
          builder: (context, value, _) => Stack(
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
        ),
      );
}
