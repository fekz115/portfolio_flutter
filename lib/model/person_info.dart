import 'package:portfolio_flutter/model/info_item.dart';
import 'package:portfolio_flutter/model/knowledge.dart';
import 'package:portfolio_flutter/model/skill.dart';

class PersonInfo {
  final String? avatarUrl;
  final String firstName;
  final String lastName;
  final String description;
  final int? age;
  final String? country;
  final String? city;
  final String? timeZone;
  final List<InfoItem>? additionalInfoItems;
  final List<Skill>? skills;
  final List<Knowledge>? knowledge;

  PersonInfo({
    this.avatarUrl,
    required this.firstName,
    required this.lastName,
    required this.description,
    this.age,
    this.country,
    this.city,
    this.timeZone,
    this.additionalInfoItems,
    this.skills,
    this.knowledge,
  });
}
