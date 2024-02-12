import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/widgets/main_screen/skill_widget.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    super.key,
    required this.skills,
  });

  final List<Skill> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        const Text(
          'Skills:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        ...skills
            .map(
              (skill) => SkillWidget(
                name: skill.name,
                value: skill.value,
              ),
            )
            ,
      ],
    );
  }
}
