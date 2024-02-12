import 'package:flutter/material.dart';
import 'package:portfolio_flutter/model/person_info.dart';
import 'package:portfolio_flutter/widgets/main_screen/about_me_section_widget.dart';
import 'package:portfolio_flutter/widgets/main_screen/avatar_widget.dart';
import 'package:portfolio_flutter/widgets/main_screen/knowledge_widget.dart';
import 'package:portfolio_flutter/widgets/main_screen/name_widget.dart';
import 'package:portfolio_flutter/widgets/main_screen/skills_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.personInfo,
  });

  final PersonInfo personInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(25),
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (personInfo.avatarUrl != null)
              AvatarWidget(
                url: personInfo.avatarUrl,
              ),
            NameWidget(
              firstName: personInfo.firstName,
              lastName: personInfo.lastName,
            ),
            AboutMeSectionWidget(
              description: personInfo.description,
              age: personInfo.age,
              city: personInfo.city,
              country: personInfo.country,
              timeZone: personInfo.timeZone,
              additionalInfoItems: personInfo.additionalInfoItems,
            ),
            if (personInfo.skills != null && personInfo.skills!.isNotEmpty)
              SkillsWidget(skills: personInfo.skills!),
            if (personInfo.knowledge != null &&
                personInfo.knowledge!.isNotEmpty)
              KnowledgeWidget(knowledge: personInfo.knowledge!),
          ],
        ),
      ),
    );
  }
}
