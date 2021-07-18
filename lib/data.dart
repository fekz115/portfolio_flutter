import 'package:portfolio_flutter/model/info_item.dart';
import 'package:portfolio_flutter/model/knowledge.dart';
import 'package:portfolio_flutter/model/person_info.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/model/speciality.dart';

final personInfo = PersonInfo(
  description: 'Flutter Developer, Android/Linux Enthusiast',
  firstName: 'Eugene',
  lastName: 'Lepshi',
  age: 21,
  city: 'Gomel',
  country: 'Belarus',
  timeZone: 'GMT +3',
  skills: const [
    Skill(
      name: 'Dart',
      value: 0.79,
    ),
    Skill(
      name: 'Kotlin',
      value: 0.84,
    ),
    Skill(
      name: 'Java',
      value: 0.68,
    ),
  ],
  additionalInfoItems: [
    const InfoItem(
      name: 'Education',
      value: 'GSTU n.a. P.O. Sukhoi, IaPT, 2021',
    ),
  ],
  knowledge: [
    const Knowledge(name: 'Using GIT'),
    const Knowledge(name: 'Always use commitizen to format commit message'),
    const Knowledge(name: 'Various patterns and best practices'),
    const Knowledge(name: 'SOLID, KISS, DRY'),
    const Knowledge(name: 'OOP'),
  ],
  specialties: const [
    Speciality(
      name: 'Android/Linux Enthusiast',
      description: 'Building kernel, android roms for phones...',
    ),
    Speciality(
      name: 'Flutter Developer',
      description: 'Statemanagement, 60fps, widgets...',
    ),
    Speciality(
      name: 'Java/Kotlin Backend Developer',
      description: 'Spring, databases, docker...',
    ),
  ],
);
