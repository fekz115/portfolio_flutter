import 'package:portfolio_flutter/model/project_feature.dart';
import 'package:portfolio_flutter/model/project_package.dart';
import 'package:portfolio_flutter/model/project_status.dart';

class Project {
  const Project({
    required this.name,
    required this.description,
    required this.link,
    this.features,
    required this.progress,
    required this.status,
    this.packages,
  });

  final String name;
  final String description;
  final String link;
  final List<ProjectFeature>? features;
  final double progress;
  final ProjectStatus status;
  final Map<String?, List<ProjectPackage>>? packages;
}
