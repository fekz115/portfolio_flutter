import 'package:portfolio_flutter/model/project.dart';
import 'package:portfolio_flutter/model/speciality_point.dart';
import 'package:portfolio_flutter/model/technology.dart';

class Speciality {
  const Speciality({
    required this.name,
    required this.description,
    this.specialityPoints,
    this.technologies,
    this.projects,
  });

  final String name;
  final String description;
  final List<SpecialityPoint>? specialityPoints;
  final Map<String, List<Technology>>? technologies;
  final List<Project>? projects;
}
